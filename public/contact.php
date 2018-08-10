
<!-- Configuration-->

<?php require_once("../resources/config.php"); ?>


<!-- Header-->
<?php include(TEMPLATE_FRONT .  "/header.php");?>
   
         <!-- Contact Section -->

       <div id="contact-page" class="container">
        <div class="bg">
            <div class="row">           
                <div class="col-sm-12">                         
                    <h2 class="title text-center">Contact <strong>Us</strong></h2>       
                    <h3 class="section-subheading text-center">
                            <?php display_message(); ?>
                        </h3>           
                    <div id="gmap" class="contact-map">
                    </div>
                </div>                  
            </div>      
            <div class="row">   
                <div class="col-sm-8">
                    <div class="contact-form">
                        <h2 class="title text-center">Get In Touch</h2>

                        <div class="status alert alert-success" style="display: none"></div>
                        <form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
                            <?php send_message(); ?>
                            <div class="form-group col-md-6">
                                <input type="text" name="name" class="form-control" required="required" placeholder="Name">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="email" name="email" class="form-control" required="required" placeholder="Email">
                            </div>
                            <div class="form-group col-md-12">
                                <input type="text" name="subject" class="form-control" required="required" placeholder="Subject">
                            </div>
                            <div class="form-group col-md-12">
                                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
                            </div>                        
                            <div class="form-group col-md-12">
                                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="contact-info">
                        <h2 class="title text-center">Contact Info</h2>
                        <address>
                            <p>Mar-Mil Aquatic and Agro Trading Corporation</p>
                            <p>#25 Cluster C Barangay Bagong Nayon I Antipolo City</p>
                            <p>Cogeo Bagong Nayon I</p>
                            <p>Mobile: 09752973895</p>
                            <p>Fax: wala pa</p>
                            <p>Email: janjanmalapitan37@gmail.com</p>
                        </address>
                        
                    </div>
                </div>              
            </div>  
        </div>  
    </div><!--/#contact-page-->    <!-- /.container -->
<?php include(TEMPLATE_FRONT .  "/footer.php");?>