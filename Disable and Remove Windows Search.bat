sc stop "WSearch"
sc config "WSearch" start="disabled"
Dism /online /Disable-Feature /FeatureName:"SearchEngine-Client-Package" /Remove