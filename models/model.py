import numpy as np
import pandas as pd

dataset = pd.read_csv('Data.csv')
x = dataset.iloc[:, :-1].values
y = dataset.iloc[:, -1].values

from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()
y = le.fit_transform(y)

from sklearn.model_selection import train_test_split
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size = 0.2, random_state = 0)

from xgboost import XGBClassifier
classifier = XGBClassifier(use_label_encoder = False)
classifier.fit(x_train, y_train, eval_metric = "error")

from sklearn.metrics import accuracy_score
y_pred = classifier.predict(x_test)
accuracy = accuracy_score(y_test, y_pred)

print(accuracy)
