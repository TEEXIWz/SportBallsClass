import numpy as np

classS = {0:'american_football', 1:'baseball', 2:'basketball',
               3:'bowling_ball',4:'football', 5:'golf_ball',
               6:'rugby_ball',7:'table_tennis_ball',8:'tennis_ball',
               9:'volleyball'}

def predict_carsband(model,img):
    image=np.expand_dims(img,axis=0)
    sport = model.predict(image)
    return {'sport':classS[np.argmax([sport[0]])]}