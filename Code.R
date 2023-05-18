library(ComplexHeatmap)

mat = read.csv("heatmap_data.csv")
colnames(mat) = letters[1:10]
densityHeatmap(mat)

frequencyHeatmap(mat)

frequencyHeatmap(mat, use_3d = TRUE)



mat2 <- read.csv("heatmap_data2.csv", row.names = 1)  # Read the data with first column as row names
mat2 <- as.matrix(mat2)
Heatmap3D(mat2, name = "mat2", column_title = "3D heatmap")
