from sklearn.linear_model import LinearRegression
import pickle

# Simple training data (example)
X = [[1], [2], [3], [4], [5]]
y = [100, 200, 300, 400, 500]

# Create and train the model
model = LinearRegression()
model.fit(X, y)

# Save the model to disk
with open('model.pkl', 'wb') as model_file:
    pickle.dump(model, model_file)
