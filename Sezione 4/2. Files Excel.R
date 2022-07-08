install.packages('xlsx')
library(xlsx)

# importazione files

df_excel <- read.xlsx('df5.xlsx', sheetIndex = 1)

df_excel_second_sheet <- read.xlsx('df5.xlsx', sheetName = 'Sheet2')

# esportazione files

write.xlsx(x = df_excel_second_sheet, 'new_excel_file.xlsx')

