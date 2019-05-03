### K-means

using Clustering
using RDatasets
using Gadfly

iris = dataset("datasets", "iris")
features = convert(Array, iris[:, 1:4])
labels = convert(Array, iris[:, 5]);

# choose 3 random starting points
initseeds(:rand, convert(Matrix,features'), 3)

result = kmeans(features, 3)
