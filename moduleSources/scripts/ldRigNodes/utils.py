'''
    :package:   ldRigNodes
    :file:      utils.py
    :author:    ldepoix
    :version:   0.0.2
    :brief:     List of usefull functions to perform standard operations.
'''
from maya import cmds, mel
import ctypes
import sys
import subprocess

CF_TEXT = 1

def copy_to_clipboard(s):
    """Clipboard copy. | source: https://gist.github.com/adam-p/4173174
    """
    if sys.platform == 'win32' or sys.platform == 'cygwin':
        subprocess.Popen(['clip'], stdin=subprocess.PIPE).communicate(s)
    else:
        raise Exception('Platform not supported')

def get_selected_channels():
	channelBox = mel.eval('global string $gChannelBoxName; $temp=$gChannelBoxName;')	#fetch maya's main channelbox
	attrs = cmds.channelBox(channelBox, q=True, sma=True)
	if not attrs:
		return []
	return attrs

def get_clipboard_text():
    """Clipboard paste. | source: https://stackoverflow.com/a/23285159

    Returns:
        str: Keyboard value
    """
    kernel32 = ctypes.windll.kernel32
    kernel32.GlobalLock.argtypes = [ctypes.c_void_p]
    kernel32.GlobalLock.restype = ctypes.c_void_p
    kernel32.GlobalUnlock.argtypes = [ctypes.c_void_p]
    user32 = ctypes.windll.user32
    user32.GetClipboardData.restype = ctypes.c_void_p
    user32.OpenClipboard(0)

    try:
        if user32.IsClipboardFormatAvailable(CF_TEXT):
            data = user32.GetClipboardData(CF_TEXT)
            data_locked = kernel32.GlobalLock(data)
            text = ctypes.c_char_p(data_locked)
            value = text.value
            kernel32.GlobalUnlock(data_locked)
            return value
    finally:
        user32.CloseClipboard()

def concatanate_list(list):
    # This function convert data from list to maya enum style.
    newList = ""
    
    for id, listItem in enumerate(list):
        if(id != 0):
            newList += ":"
        
        newList += listItem
    
    return newList