import random
from faker import Faker
from datetime import datetime, timedelta

fake = Faker()

# Departments and enrollment statuses
departments = ['Computer Science', 'Mathematics', 'Physics', 'Biology', 'Engineering', 'Business', 'Art', 'History']
statuses = ['active', 'graduated', 'dropped']

# Generate 50 student records
students = []
for i in range(1, 51):
    name = fake.name()
    age = random.randint(18, 30)
    gender = random.choice(['Male', 'Female', 'Other'])
    dob = fake.date_of_birth(minimum_age=18, maximum_age=30).strftime('%Y-%m-%d')
    country = fake.country()
    city = fake.city()
    address = fake.address().replace("\n", ", ")
    email = fake.email()
    phone = fake.phone_number()
    department = random.choice(departments)
    enrollment_status = random.choice(statuses)
    gpa = round(random.uniform(2.0, 4.0), 2)
    height = round(random.uniform(150, 200), 2)
    weight = round(random.uniform(45, 100), 2)
    income = round(random.uniform(0, 25000), 2)
    scholarship = random.choice([True, False])
    enrolled = fake.date_time_between(start_date='-4y', end_date='now').strftime('%Y-%m-%d %H:%M:%S')

    record = f"({i}, '{name}', {age}, '{gender}', '{dob}', '{country}', '{city}', '{address}', '{email}', '{phone}', '{department}', '{enrollment_status}', {gpa}, {height}, {weight}, {income}, {int(scholarship)}, '{enrolled}')"
    students.append(record)

# Join all records into a single SQL INSERT statement
insert_statement = "INSERT INTO students (id, name, age, gender, date_of_birth, country, city, address, email, phone, department, enrollment_status, gpa, height, weight, income, scholarship, enrolled) VALUES\n" + ",\n".join(students) + ";"

insert_statement[:1000]  # preview only the first 1000 characters for brevity
