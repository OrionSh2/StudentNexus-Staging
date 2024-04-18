<template>
    <div>
        <h2>Student List</h2>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Student ID</th>
                    <th>Gender</th>
                    <th>Ethnicity</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="student in students" :key="student.id">
                    <td>{{ student.name }}</td>
                    <td>{{ student.student_id }}</td>
                    <td>{{ student.gender }}</td>
                    <td>{{ student.ethnicity }}</td>
                    <td>{{ student.email }}</td>
                    <td>{{ student.phone }}</td>
                    <td>
                        <button @click="editStudent(student)">Edit</button>
                        <button @click="deleteStudent(student.id)">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>
        <button @click="showAddForm = true">Add Student</button>
        <student-form v-if="showAddForm" @close="showAddForm = false" @student-added="fetchStudents"></student-form>
        <student-form v-if="showEditForm" :student="editedStudent" @close="showEditForm = false" @student-updated="fetchStudents"></student-form>
    </div>
</template>

<script>
import axios from 'axios';
import StudentForm from './StudentForm.vue';

export default {
    components: {
        StudentForm,
    },
    data() {
        return {
            students: [],
            showAddForm: false,
            showEditForm: false,
            editedStudent: null,
        };
    },
    mounted() {
        this.fetchStudents();
    },
    methods: {
        fetchStudents() {
            axios.get('/api/students')
                .then(response => {
                    this.students = response.data;
                })
                .catch(error => {
                    console.error(error);
                });
        },
        editStudent(student) {
            this.editedStudent = { ...student };
            this.showEditForm = true;
        },
        deleteStudent(id) {
            axios.delete(`/api/students/${id}`)
                .then(() => {
                    this.fetchStudents();
                })
                .catch(error => {
                    console.error(error);
                });
        },
    },
};
</script>
