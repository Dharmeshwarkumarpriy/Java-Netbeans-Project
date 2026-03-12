<%@page import="com.college.dao.DoctorDao"%>
<%@page import="com.college.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.college.entity.Patient"%>
<%@page import="com.college.dao.PatientDao"%>
<%@page import="com.college.helper.FactoryProduct"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
            Doctor d = (Doctor) session.getAttribute("current-user");
            
            PatientDao asd = new PatientDao(FactoryProduct.getFactory());
    List<Patient> list = asd.getAllPatient();
    
            
            
         
        %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
 
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Hospital
  * Template URL: https://bootstrapmade.com/Hospital-bootstrap-hospital-template/
  * Updated: Aug 11 2025 with Bootstrap v5.3.7
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="appointment-page">

  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container position-relative d-flex align-items-center justify-content-between">

      <a href="index.jsp" class="logo d-flex align-items-center me-auto me-xl-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.webp" alt=""> -->
        <h1 class="sitename">Hosp<span>ital</span></h1>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="index.jsp" class="active">Home</a></li>
          <li><a href="about.jsp">About</a></li>
          <li><a href="departments.jsp">Departments</a></li>
          <li><a href="services.jsp">Services</a></li>
          
          <li class="dropdown"><a href="#"><span>More Pages</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="department-details.jsp">Department Details</a></li>
              <li><a href="service-details.jsp">Service Details</a></li>
              
              <li><a href="testimonials.jsp">Testimonials</a></li>
              <li><a href="faq.jsp">Frequently Asked Questions</a></li>
              <li><a href="gallery.jsp">Gallery</a></li>
              <li><a href="terms.jsp">Terms</a></li>
              <li><a href="privacy.jsp">Privacy</a></li>
              <li><a href="404.jsp">404</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#"><span>Dropdown</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
    <li><a href="view-appointments.jsp">View Appointments</a></li>
    <li><a href="viewInvoices.jsp">View Invoices</a></li>
    <li><a href="invoice.jsp">Generate Invoice</a></li>

    <li><a href="patient.jsp">Register Patient</a></li>
    <li><a href="appointment.jsp">Book Appointment</a></li>
    <li><a href="logoutServlet">Logout</a></li>
</ul>
          </li>
          <li><a href="contact.jsp">Contact</a></li>
        </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>

     
      
    <a class="btn-getstarted" href="appointment.jsp">Appointment</a>

    </div>
  </header>

  <main class="main">

    <!-- Page Title -->
    <div class="page-title">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-8">
              <h1 class="heading-title">Appointment</h1>
              <p class="mb-0">
                Odio et unde deleniti. Deserunt numquam exercitationem. Officiis quo
                odio sint voluptas consequatur ut a odio voluptatem. Sit dolorum
                debitis veritatis natus dolores. Quasi ratione sint. Sit quaerat
                ipsum dolorem.
              </p>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li class="current">Appointment</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->

    <!-- Appointmnet Section -->
    <section id="appointmnet" class="appointmnet section">

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row gy-4">

          <!-- Appointment Info -->
          <div class="col-lg-6">
            <div class="appointment-info">
              <h3>Quick &amp; Easy Online Booking</h3>
              <p class="mb-4">Book your appointment in just a few simple steps. Our healthcare professionals are ready to provide you with the best medical care tailored to your needs.</p>

              <div class="info-items">
                <div class="info-item d-flex align-items-center mb-3" data-aos="fade-up" data-aos-delay="200">
                  <div class="icon-wrapper me-3">
                    <i class="bi bi-calendar-check"></i>
                  </div>
                  <div>
                    <h5>Flexible Scheduling</h5>
                    <p class="mb-0">Choose from available time slots that fit your busy schedule</p>
                  </div>
                </div><!-- End Info Item -->

                <div class="info-item d-flex align-items-center mb-3" data-aos="fade-up" data-aos-delay="250">
                  <div class="icon-wrapper me-3">
                    <i class="bi bi-stopwatch"></i>
                  </div>
                  <div>
                    <h5>Quick Response</h5>
                    <p class="mb-0">Get confirmation within 15 minutes of submitting your request</p>
                  </div>
                </div><!-- End Info Item -->

                <div class="info-item d-flex align-items-center mb-3" data-aos="fade-up" data-aos-delay="300">
                  <div class="icon-wrapper me-3">
                    <i class="bi bi-shield-check"></i>
                  </div>
                  <div>
                    <h5>Expert Medical Care</h5>
                    <p class="mb-0">Board-certified doctors and specialists at your service</p>
                  </div>
                </div><!-- End Info Item -->
              </div>

              <div class="emergency-contact mt-4" data-aos="fade-up" data-aos-delay="350">
                <div class="emergency-card p-3">
                  <h6 class="mb-2"><i class="bi bi-telephone-fill me-2"></i>Emergency Hotline</h6>
                  <p class="mb-0">Call <strong>+1 (555) 911-4567</strong> for urgent medical assistance</p>
                </div>
              </div>

            </div>
          </div><!-- End Appointment Info -->

          <!-- Appointment Form -->
          <div class="col-lg-6">
            <div class="appointment-form-wrapper" data-aos="fade-up" data-aos-delay="200">
             
<form action="AppointmentServlet" method="post">
    <label>Doctor ID:</label><br>
  
    <select name="doctorId" required>
        <option value="">-- Select Doctor --</option>
        
            <option value="<%= d.getId() %>">
                <%= d.getName() %> - <%= d.getSpecialization() %>
            </option>
      
    </select>
    
    <br><br>

    <label>Patient ID:</label><br>
    <select name="patientId" required>
        <option value="">-- Select Patient --</option>
        <%
            for (Patient p : list) {
        %>
            <option value="<%= p.getPatientId() %>">
                <%= p.getName() %> - <%= p.getPhone() %>
            </option>
       <%}%>
    </select>
    <br><br>

    <label>Appointment Date:</label><br>
    <input type="date" name="appointmentDate" required><br><br>

    <input type="submit" value="Book Appointment">
</form>
            </div>
          </div><!-- End Appointment Form -->

        </div>

        <!-- Process Steps -->
        <div class="process-steps mt-5" data-aos="fade-up" data-aos-delay="300">
          <div class="row text-center gy-4">
            <div class="col-lg-3 col-md-6">
              <div class="step-item">
                <div class="step-number">1</div>
                <div class="step-icon">
                  <i class="bi bi-person-fill"></i>
                </div>
                <h5>Fill Details</h5>
                <p>Provide your personal information and select your preferred department</p>
              </div>
            </div><!-- End Step -->

            <div class="col-lg-3 col-md-6">
              <div class="step-item">
                <div class="step-number">2</div>
                <div class="step-icon">
                  <i class="bi bi-calendar-event"></i>
                </div>
                <h5>Choose Date</h5>
                <p>Select your preferred date and time slot from available options</p>
              </div>
            </div><!-- End Step -->

            <div class="col-lg-3 col-md-6">
              <div class="step-item">
                <div class="step-number">3</div>
                <div class="step-icon">
                  <i class="bi bi-check-circle"></i>
                </div>
                <h5>Confirmation</h5>
                <p>Receive instant confirmation and appointment details via email or SMS</p>
              </div>
            </div><!-- End Step -->

            <div class="col-lg-3 col-md-6">
              <div class="step-item">
                <div class="step-number">4</div>
                <div class="step-icon">
                  <i class="bi bi-heart-pulse"></i>
                </div>
                <h5>Get Treatment</h5>
                <p>Visit our clinic at your scheduled time and receive quality healthcare</p>
              </div>
            </div><!-- End Step -->

          </div>
        </div><!-- End Process Steps -->

      </div>

    </section><!-- /Appointmnet Section -->

  </main>

  <footer id="footer" class="footer position-relative">

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="index.jsp" class="logo d-flex align-items-center">
            <span class="sitename">MediNest</span>
          </a>
          <div class="footer-contact pt-3">
            <p>A108 Adam Street</p>
            <p>New York, NY 535022</p>
            <p class="mt-3"><strong>Phone:</strong> <span>+1 5589 55488 55</span></p>
            <p><strong>Email:</strong> <span>info@example.com</span></p>
          </div>
          <div class="social-links d-flex mt-4">
            <a href=""><i class="bi bi-twitter-x"></i></a>
            <a href=""><i class="bi bi-facebook"></i></a>
            <a href=""><i class="bi bi-instagram"></i></a>
            <a href=""><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Terms of service</a></li>
            <li><a href="#">Privacy policy</a></li>
          </ul>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Our Services</h4>
          <ul>
            <li><a href="#">Web Design</a></li>
            <li><a href="#">Web Development</a></li>
            <li><a href="#">Product Management</a></li>
            <li><a href="#">Marketing</a></li>
            <li><a href="#">Graphic Design</a></li>
          </ul>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Hic solutasetp</h4>
          <ul>
            <li><a href="#">Molestiae accusamus iure</a></li>
            <li><a href="#">Excepturi dignissimos</a></li>
            <li><a href="#">Suscipit distinctio</a></li>
            <li><a href="#">Dilecta</a></li>
            <li><a href="#">Sit quas consectetur</a></li>
          </ul>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Nobis illum</h4>
          <ul>
            <li><a href="#">Ipsam</a></li>
            <li><a href="#">Laudantium dolorum</a></li>
            <li><a href="#">Dinera</a></li>
            <li><a href="#">Trodelas</a></li>
            <li><a href="#">Flexo</a></li>
          </ul>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <span>Copyright</span> <strong>MediNest</strong>&nbsp;<span>All Rights Reserved</span></p>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you've purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>