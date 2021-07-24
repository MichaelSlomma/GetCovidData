$webdownload = new-object system.net.webclient
$file = "https://github.com/owid/covid-19-data/blob/master/public/data/owid-covid-data.csv"
$save = "./owid-covid-data.csv"
$webdownload.Downloadfile($file,$save)
$covdata = Import-csv -path $save
