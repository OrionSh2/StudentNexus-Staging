<template>
    <div>
        <h2>{{ isEditMode ? 'Edit Student' : 'Add Student' }}</h2>
        <form @submit.prevent="submitForm">
            <div>
                <label for="name">Name:</label>
                <input type="text" id="name" v-model="student.name" required>
            </div>
            <div>
                <label for="student_id">Student ID:</label>
                <input type="text" id="student_id" v-model="student.student_id" required>
            </div>
            <div>
                <label for="gender">Gender:</label>
                <input type="text" id="gender" v-model="student.gender">
            </div>
            <div>
                <label for="ethnicity">Ethnicity:</label>
                <input type="text" id="ethnicity" v-model="student.ethnicity">
            </div>
            <div>
                <label for="email">Email:</label>
                <input type="email" id="email" v-model="student.email" required>
            </div>
            <div>
                <label for="phone">Phone:</label>
                <input type="text" id="phone" v-model="student.phone">
            </div>
            <div>
                <button type="submit">{{ isEditMode ? 'Update' : 'Add' }}</button>
                <button type="button" @click="closeForm">Cancel</button>
            </div>
        </form>
    </div>
</
