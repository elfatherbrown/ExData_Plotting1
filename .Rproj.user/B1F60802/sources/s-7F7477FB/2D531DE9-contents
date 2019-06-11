usePackage <- function(p)
{
  if (!is.element(p, installed.packages()[, 1]))
    install.packages(p, dep = TRUE)
  require(p, character.only = TRUE)
}
usePackage("readr")
usePackage("stringr")
usePackage("tidyr")
usePackage("dplyr")
usePackage("janitor")
usePackage("lubridate")
#We check if the data directory is in the current working directory
getData <- function() {
  FNAME = "exdata_data_household_power_consumption.zip"
  FFNAME = file.path(getwd(), FNAME)
  FUNZIP = file.path(getwd(), "household_power_consumption.txt")
  if (!(FNAME %in% dir())) {
    print("File not in cwd")
    download.file(
      "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
      destfile = FFNAME
    )
  }
  if (!(FUNZIP %in% dir())) {
    unzip(FFNAME)
  }
  
  by_chunk <- function (chunk, pos) {
    return(subset(chunk, (Date == dmy("01/02/2007")) |
                     (Date == dmy("02/02/2007"))
           ))
  }
  
  DATAFILE = file.path(FUNZIP)
  return(
    read_delim_chunked(
      "./household_power_consumption.txt",
      DataFrameCallback$new(by_chunk),
      delim=";",
      chunk_size = 20000,
      col_types = cols(
        Date = col_date(format = "%d/%m/%Y"),
        Time = col_time(format = "%H:%M:%S"),
        Global_active_power = col_double(),
        Global_reactive_power = col_double(),
        Voltage = col_double(),
        Global_intensity = col_double(),
        Sub_metering_1 = col_double(),
        Sub_metering_2 = col_double(),
        Sub_metering_3 = col_double()
      ),
      na = c("", "?")
    )
  )
}
print("We export the global variable d")
if(!("d" %in% ls())){
  print("Parsing data  into variable d")
  d<-getData()
}else{
  print("Data is in d")
}
