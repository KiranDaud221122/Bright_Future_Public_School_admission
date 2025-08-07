<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Bright_Future_Public_School.Index1" %>

      <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Features Section -->
    <section class="features-section">
        <div class="container">
            <h2 class="section-title">Why Choose Our School</h2>

            <div class="row">
                <div class="col-md-4">
                    <div class="card feature-card">
                        <img src="img\classroom.jpg" class="card-img-top feature-img" alt="Modern Classrooms" />

                        <div class="card-body feature-content">
                            <div class="text-center">
                                <i class="fas fa-chalkboard-teacher feature-icon"></i>
                            </div>
                            <h3 class="card-title text-center">Modern Classrooms</h3>
                            <p class="card-text text-center">Smart classrooms with digital boards, projectors, and comfortable seating to enhance learning experience.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card feature-card">
                        <img src="img\faculty.jpg" class="card-img-top feature-img" alt="Experienced Faculty">
                        <div class="card-body feature-content">
                            <div class="text-center">
                                <i class="fas fa-user-graduate feature-icon"></i>
                            </div>
                            <h3 class="card-title text-center">Experienced Faculty</h3>
                            <p class="card-text text-center">Our qualified teachers are dedicated to nurturing each child's potential through personalized attention.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card feature-card">
                        <img src="img\schoolbus.jpg" class="card-img-top feature-img" alt="Transport Facility">


                        <div class="card-body feature-content">
                            <div class="text-center">
                                <i class="fas fa-bus feature-icon"></i>
                            </div>
                            <h3 class="card-title text-center">Transport Facility</h3>
                            <p class="card-text text-center">Safe and reliable bus transportation with GPS tracking and trained attendants for student safety.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Important Highlights Section -->
        <section class="features-section">
            <div class="container">
                <h2 class="section-title">Highlights</h2>

                <div class="row">
                    <!-- Admissions Open -->
                    <div class="col-md-4 mb-6">
                        <div class="card feature-card">
                            <img src="img/admission.png" class="card-img-top feature-img" alt="Admissions Open">
                            <div class="card-body feature-content text-center">
                                <div class="feature-icon">
                                    <i class="fas fa-door-open"></i>
                                </div>
                                <h5 class="card-title">Admissions Open</h5>
                                <p class="card-text">Enroll now for the 2025-26 academic year. Limited seats available!</p>
                            </div>
                        </div>
                    </div>

                    <!-- Our Achievements -->
                    <div class="col-md-4 mb-6">
                        <div class="card feature-card">
                            <img src="img/achivment.png" class="card-img-top feature-img" alt="Achievements">
                            <div class="card-body feature-content text-center">
                                <div class="feature-icon">
                                    <i class="fas fa-trophy"></i>
                                </div>
                                <h5 class="card-title">Our Achievements</h5>
                                <p class="card-text">100% board results and multiple awards in academics & sports.</p>
                            </div>
                        </div>
                    </div>

                    <!-- Upcoming Events -->
                    <div class="col-md-4 mb-6">
                        <div class="card feature-card">
                            <img src="img/event.jpeg" class="card-img-top feature-img" alt="Upcoming Events">
                            <div class="card-body feature-content text-center">
                                <div class="feature-icon">
                                    <i class="fas fa-calendar-alt"></i>
                                </div>
                                <h5 class="card-title">Upcoming Events</h5>
                                <p class="card-text">Annual Day – Nov 2025, Science Fair – Dec 2025. Join us!</p>
                            </div>
                        </div>
                    </div>
        </section>



        <!-- Fees Structure -->
        <section class="fees-section" id="about">
            <div class="container">
                <h2 class="section-title">Fees Structure</h2>

                <div class="row justify-content-center">
                    <div class="col-lg-10">
                        <table class="table fees-table">
                            <thead>
                                <tr>
                                    <th>Class</th>
                                    <th>Annual Fees (₹)</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Play</td>
                                    <td>5,000</td>

                                </tr>
                                <tr>
                                    <td>Group</td>
                                    <td>6,000</td>

                                </tr>
                                <tr>
                                    <td>LKG</td>
                                    <td>7,000</td>

                                </tr>
                                <tr>
                                    <td>UKG</td>
                                    <td>8,000</td>

                                </tr>
                                <tr>
                                    <td>1st Standard</td>
                                    <td>10,000</td>

                                </tr>
                                <tr>
                                    <td>2nd Standard</td>
                                    <td>12,000</td>

                                </tr>
                                <tr>
                                    <td>3rd Standard</td>
                                    <td>14,000</td>

                                </tr>
                                <tr>
                                    <td>4th Standard</td>
                                    <td>16,000</td>

                                </tr>
                                <tr>
                                    <td>5th Standard</td>
                                    <td>18,000</td>

                                </tr>
                                <tr>
                                    <td>6th Standard</td>
                                    <td>19,000</td>

                                </tr>
                                <tr>
                                    <td>7th Standard</td>
                                    <td>20,000</td>

                                </tr>
                                <tr>
                                    <td>8th Standard</td>
                                    <td>20,000</td>

                                </tr>
                                <tr>
                                    <td>9th Standard</td>
                                    <td>22,000</td>

                                </tr>
                                <tr>
                                    <td>10th Standard</td>
                                    <td>25,000</td>

                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>






        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
        <script src="js/script.js"></script>
</asp:Content>
