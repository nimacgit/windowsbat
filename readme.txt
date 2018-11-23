
downloaded frome WWW.SOFTPAND.COM

WirelessKeyView v1.36
Copyright (c) 2006 - 2011 Nir Sofer
Web Site: http://www.nirsoft.net



Description
===========

WirelessKeyView recovers all wireless network keys (WEP/WPA) stored in
your computer by the 'Wireless Zero Configuration' service of Windows XP
or by the 'WLAN AutoConfig' service of Windows Vista. It allows you to
easily save all keys to text/html/xml file, or copy a single key to the
clipboard.

License
=======

This utility is released as freeware. You are allowed to freely
distribute this utility via floppy disk, CD-ROM, Internet, or in any
other way, as long as you don't charge anything for this. If you
distribute this utility, you must include all files in the distribution
package, without any modification !
Be aware that selling this utility as a part of a software package is not
allowed !



Disclaimer
==========

The software is provided "AS IS" without any warranty, either expressed
or implied, including, but not limited to, the implied warranties of
merchantability and fitness for a particular purpose. The author will not
be liable for any special, incidental, consequential or indirect damages
due to loss of data or any other reason.



Known Problems
==============

False Alert Problems: Some Antivirus programs detect WirelessKeyView
utility as infected with Trojan/Virus. Click here to read more about
false alerts in Antivirus programs.

Also, if you have any problem with using WirelessKeyView, please read the
WirelessKeyView Frequently Asked Questions page



Versions History
================


* Version 1.36:
  o Fixed bug on Windows 7/2008/Vista: WirelessKeyView truncated the
    key after 32 characters.

* Version 1.35:
  o Added 'Mark Odd/Even Rows' option, under the View menu. When it's
    turned on, the odd and even rows are displayed in different color, to
    make it easier to read a single line.
  o Added 'Add Header Line To CSV/Tab-Delimited File' option. When
    this option is turned on, the column names are added as the first
    line when you export to csv or tab-delimited file.

* Version 1.34:
  o Fixed bug: pressing the delete key in the find window deleted an
    item in the main window.

* Version 1.33:
  o When loading WirelessKeyView under Windows 7 in the first time,
    the 'Code Inject' mode is now turned on by default.

* Version 1.32:
  o Added /codeinject command-line option.

* Version 1.31:
  o Fixed a crash problem with Application Compatibility Engine on
    Windows 7/Vista (only when 'Use code injection method' is turned on).

* Version 1.30:
  o Added 'Use code injection method' option in the Advanced Options
    window, as a workaround for using this utility on Windows 7. (See
    below)

* Version 1.28:
  o Added sorting command-line options.

* Version 1.27:
  o Fixed bug: In Vista, WPA-PSK keys in Ascii form displayed
    additional space character.

* Version 1.26:
  o Fixed bug: In Vista, if WPA-PSK key contained 32 characters, the
    key was not displayed in Ascii form.

* Version 1.25:
  o New and safer method to extract the wireless keys of the local
    machine: In previous versions, WirelessKeyView injected code into
    lsass.exe in order to grab the wireless keys from the system. In rare
    cases, this technique caused a crash inside lsass.exe process.
    Starting from this version, WirelessKeyView uses a new method that
    extract the wireless keys without any code injection.

* Version 1.20:
  o WirelessKeyView now allows you to extract the wireless keys from
    external instance of Windows XP. (In Advanced Options)

* Version 1.18:
  o You can now send the information to stdout by specifying an empty
    filename ("") in the command-line. (For example: WirelessKeyView.exe
    /stab "" >> c:\temp\keys.txt)

* Version 1.17:
  o Fixed bug: WirelessKeyView failed to find the adapter name
  o Fixed bug: Bad color in HTML report
  o Fixed bug: The main window lost the focus when the user switched
    to another application and then returned back to WirelessKeyView.

* Version 1.16 - Added support for saving as comma-delimited file.
* Version 1.15 - Added support for deleting the wireless keys of old
  network adapters.
* Version 1.13 - Under Vista, this utility now runs as admin
  automatically. You don't have to explicitly choose the "Run As
  Administrator" option.
* Version 1.12 - The configuration is now saved to a file instead of
  the Registry.
* Version 1.11 - Fixed 'Access Violation' problem under some wireless
  cards.
* Version 1.10 - Added support for Windows Vista. (both 32-bit and x64
  versions)
* Version 1.00 - First release.



System Requirement
==================


* Windows XP with SP1 or greater.
* You must login to windows with admin user.



Using WirelessKeyView
=====================

WirelessKeyView doesn't require any installation process or additional
DLL files. Just copy the executable file (WirelessKeyView.exe) to any
folder you like, and run it.
After you run it, the main window should displayed all WEP/WPA keys
stored in your computer by Windows 'Wireless Zero Configuration' service.
For WEP keys, the key is also displayed in Ascii form. Be aware that this
utility can only reveal the network keys stored by Windows operating
system. It cannot recover network keys stored by any other third-party
software.



Notice About WPA-PSK Keys
=========================

When you type a WPA-PSK key in Windows XP, the characters that you type
are automatically converted into a new binary key that contains 32 bytes
(64 Hexadecimal digits). This binary key cannot instantly be converted
back to the original key that you typed, but you can still use it for
connecting the wireless network exactly like the original key. In this
case, WirelessKeyView displays this binary key in the Hex key column, but
it doesn't display the original key that you typed.
As opposed to Windows XP, Windows Vista doesn't convert the WPA-PSK Key
that you type into a new binary key, but it simply keep the original key
that you type. So under Windows Vista, the original WPA-PSK key that you
typed is displayed in the Ascii key column.



Registry/File Location of The Stored Keys
=========================================

Windows XP and Windows Vista stores the wireless keys in completely
different locations:
* Windows XP: The wireless keys are stored in the Registry under
  HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WZCSVC\Parameters\Interfaces\[Inter
  face Guid].
* Windows Vista: The wireless keys are stored in the file system, under
  c:\ProgramData\Microsoft\Wlansvc\Profiles\Interfaces\[Interface Guid].
  The encrypted keys are stored in .xml file.



Deleting Wireless Keys Of Old Network Adapters
==============================================

Starting from version 1.15 of WirelessKeyView, you can delete wireless
keys of old network adapters that are no longer plugged to your computer,
by using the 'Delete Selected Items' option.
Be aware that this delete option only works for network adapters that are
not active anymore. If your network adapter is active, use the standard
user interface of Windows to delete the unwanted keys.



Using this utility on Windows 7
===============================

Starting from Windows 7, Microsoft changed the encryption and hashing
algorithms that are used by the Windows Data Protection (DPAPI) system.
This change also affects the encryption of the wireless keys stored by
Windows, and thus WirelessKeyView failed to retrieve the wireless keys
under Windows 7.
The research and development of a new code that will decrypt the keys of
Windows 7 may take a while. So for now, I added a workaround that will
allow Windows 7 users to retrieve their wireless keys. This workaround
uses an old method of code infection that I used until version 1.25 and
it still works properly under Windows 7. This method has one drawback
that you should be aware: In some circumstances, it may crash the
lsass.exe process and will require your system to restart.

In order to use this code injection method under Windows 7, go to
'Advanced Options' (F9), and choose the 'Use code injection method'
option.



Command-Line Options
====================



/external <Windows Directory>
Load the wireless keys from external instance of Windows XP.

/codeinject <0 | 1>
Specifies whether the use the code inject method. 1 = yes, 0 = no.

/stext <Filename>
Save the list of all wireless keys into a regular text file.

/stab <Filename>
Save the list of all wireless keys into a tab-delimited text file.

/stabular <Filename>
Save the list of all wireless keys into a tabular text file.

/shtml <Filename>
Save the list of all wireless keys into HTML file (Horizontal).

/sverhtml <Filename>
Save the list of all wireless keys into HTML file (Vertical).

/sxml <Filename>
Save the list of all wireless keys to XML file.

/sort <column>
This command-line option can be used with other save options for sorting
by the desired column. If you don't specify this option, the list is
sorted according to the last sort that you made from the user interface.
The <column> parameter can specify the column index (0 for the first
column, 1 for the second column, and so on) or the name of the column,
like "Key Type" and "Network Name". You can specify the '~' prefix
character (e.g: "~Network Name") if you want to sort in descending order.
You can put multiple /sort in the command-line if you want to sort by
multiple columns.

Examples:
WirelessKeyView.exe /shtml "f:\temp\1.html" /sort 2 /sort ~1
WirelessKeyView.exe /shtml "f:\temp\1.html" /sort "Network Name"

/nosort
When you specify this command-line option, the list will be saved without
any sorting.



Translating WirelessKeyView to other languages
==============================================

In order to translate WirelessKeyView to other language, follow the
instructions below:
1. Run WirelessKeyView with /savelangfile parameter:
   WirelessKeyView.exe /savelangfile
   A file named WirelessKeyView_lng.ini will be created in the folder of
   WirelessKeyView utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run WirelessKeyView, and all
   translated strings will be loaded from the language file.
   If you want to run WirelessKeyView without the translation, simply
   rename the language file, or move it to another folder.



Feedback
========

If you have any problem, suggestion, comment, or you found a bug in my
utility, you can send a message to softpand@gmail.com
