using LIBSVM
using RDatasets
using Statistics

iris = dataset("datasets", "iris")

features = convert(Array, iris[:, 1:4])
labels = convert(Array, iris[:, 5])
features_train, features_test = features[1:2:end, :], features[2:2:end, :]
labels_train, lables_test = labels[1:2:end], labels[2:2:end]

model = svmtrain(features_train', labels_train)

(predicted_labels, decision_values) = svmpredict(model, features_test')

mean(predicted_labels .== lables_test) * 1.0

predicted_labels .== lables_test