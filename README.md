# StudentNexus

StudentNexus is a student information system built on PHP and MySQL. It is designed for makerspaces and other non-traditional educational institutions. Our goal is to provide a comprehensive solution for managing student and course information, tracking attendance, assigning grades, and generating reports.

With StudentNexus, you can easily create, update and delete student profiles, as well as capture student demographic information such as name, age, and contact details. You can also upload student photos for easy identification. In addition, you can manage course offerings, track student attendance, assign and track grades, and generate reports on student progress and course completion.

Our web-based application is user-friendly and easy to use. You can access all the features of StudentNexus from any device with an internet connection. Whether you're a small makerspace or a large educational institution, StudentNexus can help you streamline your operations and make data-driven decisions about course offerings and student performance.

## Features

- **Student Management**: Create, update, and retrieve student records with details such as name, student ID, contact information, and academic profile.
- **Course Management**: Define and manage course offerings, including course codes, descriptions, credits, and prerequisites.
- **Enrollment Management**: Allow students to enroll in courses, track enrollment status, and record grades.
- **Instructor Management**: Maintain information about instructors, including their contact details and assigned courses.
- **Real-time Updates**: Leverage WebSockets for real-time updates, ensuring that changes to student records or course information are immediately reflected across the application.
- **Reporting and Analytics**: Generate comprehensive reports and analyze data to gain insights into student performance, course enrollments, and other academic metrics.
- **Authentication and Authorization**: Secure the application with user authentication and role-based access control, ensuring that only authorized users can access and perform specific actions.
- **Progressive Web App (PWA) Features**: Enjoy a native-like experience with features such as offline functionality, push notifications, and the ability to install the application on devices.

## Technologies Used

- **Backend**: [Laravel](https://laravel.com/) (PHP web framework)
- **Frontend**: [Vue.js](https://vuejs.org/) (JavaScript framework)
- **Database**: [PostgreSQL](https://www.postgresql.org/) (Relational database management system)
- **WebSockets**: [Laravel WebSockets](https://beyondco.de/docs/laravel-websockets/getting-started/introduction) (Real-time communication)
- **PWA**: [Workbox](https://developers.google.com/web/tools/workbox) (Progressive Web App libraries)

## Getting Started

To get a local copy of the project up and running, follow these steps:

1. Clone the repository: `git clone https://github.com/your-username/student-information-system.git`
2. Navigate to the project directory: `cd student-information-system`
3. Install backend dependencies: `composer install`
4. Install frontend dependencies: `npm install`
5. Configure the database connection in the `.env` file
6. Run database migrations: `php artisan migrate`
7. Start the development server: `npm run watch`
8. Start the WebSockets server: `php artisan websockets:serve`

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

StudentNexus is open source software licensed under the GPL v3.0 license.
