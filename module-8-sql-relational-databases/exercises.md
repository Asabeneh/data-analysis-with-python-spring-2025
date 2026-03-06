## Exercies

- Fetch, Transform, Store, and Display Cat Breed Data

Fetch Data: Retrieve cat breed information from the public Cat API (https://api.thecatapi.com/v1/breeds).

- Transform Data: Modify the fetched data to match the structure of the new API (https://cats-paradise-flask-vercel.vercel.app/api/v1/cats), ensuring the fields align with the provided data structure (e.g., id, name, description, image_url, life_span, origin, temperament, weight).
  
- Populate Database: Store the transformed data in a MySQL database named cats_db, using a table named cats with the appropriate schema.
- Display Data: Retrieve the stored data from the cats table and display it as a pandas DataFrame.