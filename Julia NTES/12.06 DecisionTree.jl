# Decision Tree

using DecisionTree
using RDatasets

iris     = dataset("datasets","iris")
features = convert(Array,iris[:,1:4])
labels   = convert(Array,iris[:,5])

model = build_tree(labels,features)
    # Decision Tree
    # Leaves: 9
    # Depth:  5

model = prune_tree(model,0.9)
    # Decision Tree
    # Leaves: 8
    # Depth:  5

print_tree(model,5)
    # Feature 4, Threshold 0.8
    # L-> setosa : 50/50
    # R-> Feature 4, Threshold 1.75
    #     L-> Feature 3, Threshold 4.95
    #         L-> versicolor : 47/48
    #         R-> Feature 4, Threshold 1.55
    #             L-> virginica : 3/3
    #             R-> Feature 3, Threshold 5.449999999999999
    #                 L-> versicolor : 2/2
    #                 R-> virginica : 1/1
    #     R-> Feature 3, Threshold 4.85
    #         L-> Feature 2, Threshold 3.1
    #             L-> virginica : 2/2
    #             R-> versicolor : 1/1
    #         R-> virginica : 43/43


print_tree(model,3)
    # Feature 4, Threshold 0.8
    # L-> setosa : 50/50
    # R-> Feature 4, Threshold 1.75
    #     L-> Feature 3, Threshold 4.95
    #         L-> versicolor : 47/48
    #         R-> 
    #     R-> Feature 3, Threshold 4.85
    #         L-> 
    #         R-> virginica : 43/43

# Do the forecast
apply_tree(model,[5.9,3.0,5.1,1.9])     # "virginica"

# nfold corss validation for pruned tree
n_fold=3
accuracy = nfoldCV_tree(labels,features,n_fold,0.9)
    # Mean Accuracy: 0.9933333333333333
    # 3-element Array{Float64,1}:
    #  1.0 
    #  0.98
    #  1.0

# Adaptive bossting
model,coeffs = build_adaboost_stumps(labels,features,10)

apply_adaboost_stumps(model,coeffs,[5.9,3.0,5.1,1.9])
# "virginica"

# adaboost nfold corss-validation
accuracy = nfoldCV_stumps(labels,features,3,8)


# Random forest
model = build_forest(labels,features,2,10,0.5)
    # Ensemble of Decision Trees
    # Trees:      10
    # Avg Leaves: 6.8
    # Avg Depth:  4.8

apply_forest(model,[5.9,3.0,5.1,1.9])
# "virginica"

# forest nfold corss-validation
accuracy = nfoldCV_forest(labels,features,3,2)