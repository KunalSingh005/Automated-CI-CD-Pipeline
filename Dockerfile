# Step 1: Base image select karna
# Hum Nginx server ka ek halka (alpine) version use kar rahe hain
FROM nginx:alpine

# Step 2: Apni website ki files ko Nginx ke web server folder mein copy karna
# '.' ka matlab hai current folder ki saari files
COPY . /usr/share/nginx/html

# Step 3: Browser ko batana ki container port 80 par request sunega
EXPOSE 80

# Step 4: Container start hone par Nginx server ko chalu karna
CMD ["nginx", "-g", "daemon off;"]
