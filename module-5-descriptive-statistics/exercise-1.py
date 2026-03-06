
import requests
from pprint import pprint
import pandas as pd 
import matplotlib.pyplot as plt

def fetch_data(url):
    reponse = requests.get(url)
    data = reponse.json()
    return data


def generate_csv():
    lst = []
    data = fetch_data('https://api.thecatapi.com/v1/breeds')
    for cat in data:
        reference_image_id = cat.get('reference_image_id')
        image_url =   f'https://cdn2.thecatapi.com/images/{reference_image_id}' if  reference_image_id  else ''
        lowest_year, highest_year = cat['life_span'].split(' - ')
        average_year = (int(lowest_year) + int(highest_year)) / 2
        lowest_weight, highest_weight = cat['weight']['metric'].split(' - ')
        average_weight = (int(lowest_weight) + int(highest_weight)) / 2
        dct = {
        "ID": cat['id'],
        "Name": cat['name'],
        "Origin": cat['origin'],
        "Description": cat['description'],
        "Temperament": cat['temperament'],
        "Life Span (years)": average_year,
        "Weight (kg)": average_weight,
        "Image URL": image_url
        }
        lst.append(dct)

        df = pd.DataFrame(lst)
        df.to_csv('cat_breeds.csv', index=False)


 

