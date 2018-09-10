#Foreshadow
set-ItemProperty "HKLM:SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name FeatureSettingsOverride -Value 0
set-ItemProperty "HKLM:SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name FeatureSettingsOverrideMask -Value 3

#printControl
new-Item "HKLM:\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl" -Name FEATURE_ENABLE_PRINT_INFO_DISCLOSURE_FIX -Value "default"
set-ItemProperty "HKLM:\SOFTWARE\Microsoft\Internet Explorer\MAIN\FeatureControl\FEATURE_ENABLE_PRINT_INFO_DISCLOSURE_FIX" -Name iexplore.exe -Value 1
new-Item "HKLM:SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl" -Name FEATURE_ENABLE_PRINT_INFO_DISCLOSURE_FIX -Value "default"
set-ItemProperty "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\MAIN\FeatureControl\FEATURE_ENABLE_PRINT_INFO_DISCLOSURE_FIX" -Name iexplore.exe -Value 1

#IEHarden
new-Item "HKLM:\SOFTWARE\Microsoft\Internet Explorer\MAIN\FeatureControl" -Name FEATURE_ALLOW_USER32_EXCEPTION_HANDLER_HARDENING -Value "default"
set-ItemProperty "HKLM:\SOFTWARE\Microsoft\Internet Explorer\MAIN\FeatureControl\FEATURE_ALLOW_USER32_EXCEPTION_HANDLER_HARDENING" -Name iexplore.exe -Value 1
new-Item "HKLM:SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl" -Name FEATURE_ALLOW_USER32_EXCEPTION_HANDLER_HARDENING -Value "default"
set-ItemProperty "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\MAIN\FeatureControl\FEATURE_ALLOW_USER32_EXCEPTION_HANDLER_HARDENING" -Name iexplore.exe -Value 1
