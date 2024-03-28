# Create a new Laravel project
laravel new studentnexus-app

# Navigate to the project directory
cd studentnexus-app

# Install required dependencies
composer require laravel/ui
php artisan ui vue
npm install

# Configure the database connection
# Update the .env file with your PostgreSQL credentials

# Run database migrations
php artisan migrate

# Create a model and controller
php artisan make:model Student -m
php artisan make:controller StudentController --resource