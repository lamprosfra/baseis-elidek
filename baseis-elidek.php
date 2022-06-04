<!DOCTYPE html>
    
        <html data-wf-domain="baseis-elidek.webflow.io" data-wf-page="6288b36fede950cac8089b65"
            data-wf-site="6288b36eede9502ea4089b53">

        <head>
            <meta charset="utf-8" />
            <title>Baseis-ELIDEK</title>
            <meta
                content=""
                name="description" />
            <meta content="Baseis-ELIDEK" property="og:title" />
            <meta
                content=""
                property="og:description" />
            <meta
                content="https://uploads-ssl.webflow.com/5e80894f63c557e083ed96b4/5e847eb601432651ddc2075e_Fitness%20Open%20Graph%20(1).png"
                property="og:image" />
            <meta content="Baseis-ELIDEK" property="twitter:title" />
            <meta
                content=""
                property="twitter:description" />
            <meta
                content="https://uploads-ssl.webflow.com/5e80894f63c557e083ed96b4/5e847eb601432651ddc2075e_Fitness%20Open%20Graph%20(1).png"
                property="twitter:image" />
            <meta property="og:type" content="website" />
            <meta content="summary_large_image" name="twitter:card" />
            <meta content="width=device-width, initial-scale=1" name="viewport" />
            <meta content="Webflow" name="generator" />
            <link
                href="https://uploads-ssl.webflow.com/6288b36eede9502ea4089b53/css/baseis-elidek.webflow.b6cfcfe27.css"
                rel="stylesheet" type="text/css" />
            <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript">
            </script>
            <script type="text/javascript">
                WebFont.load({
                    google: {
                        families: ["Red Hat Display:regular,italic,500,500italic,700,700italic,900",
                            "Permanent Marker:regular"
                        ]
                    }
                });
                
            </script>
            <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif]-->
            <script type="text/javascript">
                ! function (o, c) {
                    var n = c.documentElement,
                        t = " w-mod-";
                    n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch && c instanceof DocumentTouch) && (
                        n.className += t + "touch")
                }(window, document);
            </script>
            <link
                href="https://uploads-ssl.webflow.com/6288b36eede9502ea4089b53/629339fdddc7b21139306216_1234Untitled-1.png"
                rel="shortcut icon" type="image/x-icon" />
            <link
                href="https://uploads-ssl.webflow.com/6288b36eede9502ea4089b53/629339c2213879c65a398777_12Untitled-1.png"
                rel="apple-touch-icon" />
            <script type="text/javascript">
                window.__WEBFLOW_CURRENCY_SETTINGS = {
                    "currencyCode": "USD",
                    "$init": true,
                    "symbol": "$",
                    "decimal": ".",
                    "fractionDigits": 2,
                    "group": ",",
                    "template": "{{wf {\"path\":\"symbol\",\"type\":\"PlainText\"} }} {{wf {\"path\":\"amount\",\"type\":\"CommercePrice\"} }} {{wf {\"path\":\"currencyCode\",\"type\":\"PlainText\"} }}",
                    "hideDecimalForWholeNumbers": false
                };
            </script>
        </head>

        <body>
            
        <div style="opacity:0" class="page-wrap">
                <div data-collapse="medium" data-animation="over-right" data-duration="400" data-easing="ease"
                    data-easing2="ease" role="banner" class="navbar w-nav">
                    <div class="container nav-container">
                        <div class="text-block-4">Ε.Λ.Ι.Δ.Ε.Κ.</div><a href="/" aria-current="page"
                            class="brand w-nav-brand w--current"></a>
                        <div class="nav-right-wrap">
                            <div class="menu-button w-nav-button">
                                <div class="w-icon-nav-menu"></div>
                            </div>
                        </div>
                    </div>
                </div>
<section id ="pop">
                <?php
            	include 'connection-open.php';
                	?>
                	
                <div class="section hero wf-section">
                    <div class="container">
                        <div class="column hero-image-column">
                            <div class="hero-slider-image-wrap">
                                <div class="w-form">
                                    <form action="#pop" id="email-form-2" name="email-form-2" data-name="Email Form 2" method="get">
                                        <div class="text-block-2">Αναζήτηση έργων και εργαζόμενων ερευνητών</div><label
                                            for="name" class="field-label-5">
                                            Ημερομηνία</label>
                                            <input type="date"
                                            class="w-input" maxlength="256" name="Date1"  placeholder="YYYY/MM/DD" class="date-selection w-input"
                                             /><label for="email" class="field-label-4">Διάρκεια</label>
                                             <input type="number" class="w-input" maxlength="256" name="Duration"
                                             placeholder="" class="price-selection w-input" /><label
                                            for="email-4" class="field-label-6">Στέλεχος</label>
                                            <input type="text" class="w-input" maxlength="256" name="stelexos" 
                                            placeholder=""  class="stelexos-selection w-input" />
                                    </form>

                                    

                                    <input type="submit" value="Apply Filters" class="apply-filters w-button">
                                    <div class="w-form-done">
                                        <div></div>
                                    </div>
                                    <div class="w-form-fail">
                                        <div></div>
                                    </div>
                                </div>
                                <div class="div-block-4">
                                    <h5>

                                     <?php

                            include 'connection-open.php';


                                            if (isset($_GET['Date1'])) { 
                                                $parameter1 = $_GET['Date1'];
                                            }

                                            if (isset($_GET['Duration'])) { 
                                                $parameter2 = $_GET['Duration'];
                                            }

                                            if (isset($_GET['stelexos'])) { 
                                                $parameter3 = $_GET['stelexos'];
                                            }

                                        
                                        if(isset($_GET['Date1']) && isset($_GET['Duration']) && isset($_GET['stelexos'])){

                                        $queryyyya = "SELECT
                                        researcher.FirstName as number1, researcher.LastName as number2, project.Title as number3
                                        FROM project ,works, researcher, manager
                                        WHERE about.ProjectID=project.ProjectID and project.ProjectID=works.ProjectID and works.ResearchID=researcher.ResearchID and manager.ManagerID=project.ManagerID
                                        and project.StartDate<$parameter1 and project.EndDate>$parameter1 and $parameter2>=project.Duration and manager.Name=$parameter3
                                        ";

                                            

                                        $fieldddda = $conn->query($queryyyya);


                                        if ($fieldddda->num_rows > 0) {
                                        while ($row = $fieldddda->fetch_assoc()) {
                                        $fieldddda_data[] = $row;
                                        }
                                       
                                        foreach ($fieldddda_data as $key => $value) {
                                            echo '  Ο/Η ';
                                            echo str_repeat('&nbsp;', 5);
                                            echo $value['number1'];
                                            echo str_repeat('&nbsp;', 5);
                                        echo $value['number2'];
                                        echo str_repeat('&nbsp;', 5);
                                        echo '    εργάζεται στο    ';
                                        echo str_repeat('&nbsp;', 5);
                                        echo $value['number3'];
                                        echo str_repeat('&nbsp;', 5);
                                        echo '<br>';
                                        }

                                        }
                                        }   
                                        



                                        ?>


                                    </h5>    
                                        
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                                    </section>
                <section id ="there">
                <div class="section social-proof wf-section">
                    <div class="container grid-3">
                        <div class="column flex-center">
                            <h4 class="_10-margin">Έργα\Επιχειρήσεις ανά ερευνητή</h4>
                        </div>
                    </div>
                    <div class="columns w-row">
                        <div class="w-col w-col-6">
                            <div class="w-form">
                                <form action ="#there"  name="email-form-3" data-name="Email Form 3" method="get"><label
                                        for="name" class="field-label-7">ID </label><input type="text" class="w-input"
                                        maxlength="256" name="Ide"  placeholder="" id="email-4"
                                        /><input type="submit" value="Submit" data-wait="Please wait..."
                                        class="w-button" /></form>
                                <div class="w-form-done">
                                    <div>Thank you! Your submission has been received!</div>
                                </div>
                                <div class="w-form-fail">
                                    <div>Oops! Something went wrong while submitting the form.</div>
                                </div>
                            </div>
                        </div>
                        <div class="w-col w-col-6">
                            <div class="div-block-3">
<h4>
                            <?php

                                            include 'connection-open.php';
                                            if(isset($_GET['Ide'])){
                                            $ID=  $_GET["Ide"];


                                            $queryyy = "SELECT
                                             works.ProjectID as projj, project.Title as tit
                                            FROM works, project 
                                            WHERE works.ResearchID = $ID and project.ProjectID=works.ProjectID ";

                                                

                                            $fielddd = $conn->query($queryyy);


                                            if ($fielddd->num_rows > 0) {
                                            while ($row = $fielddd->fetch_assoc()) {
                                            $fielddd_data[] = $row;
                                            }

                                            foreach ($fielddd_data as $key => $value) {
                                            echo $value['tit'];
                                            echo ' ';
                                            echo '<br>';
                                            }

                                            }
                                            }      




                                            ?>
                                            </h4>
                            </div>
                        </div>
                    </div>
                    <div class="blue-line bottom"></div>
                    <div class="blue-line"></div>
                </div>



                <section id= "here">
                <div data-w-id="704f228a-8df5-ffa9-c2aa-29c84ad7d262" class="section features wf-section">
                    <div class="container">
                        <div class="column hero-image-column">
                            <div class="hero-slider-image-wrap">
                                <div class="w-form">
                               
                                    <form action="#here"  name="email-form-2" data-name="Email Form 2" method="GET">
                                        <div class="text-block-2">Ερευνητές ανά οργανισμό</div><label for="name-2"
                                            class="field-label-5">Οργανισμό</label><input type="text"   class="apply-filters w-button" name="organization" />
                                         
                                            <input type="submit"  class="apply-filters w-button" >
                                    </form>
                                    
                                    <div class="w-form-done">
                                        <div>Thank you! Your submission has been received!</div>
                                    </div>
                                    <div class="w-form-fail">
                                        <div>Oops! Something went wrong while submitting the form.</div>
                                    </div>
                                </div>
                                <div class="div-block-5">
                                
                                    
                                <h5>
                                    <?php

                                  include 'connection-open.php';
                                if(isset($_GET['organization'])){
                                    $org=  $_GET["organization"];
                   
                                
                                    $queryy = "SELECT ResearchID as firstnew, FirstName as secondnew, LastName as thirdnew
                                    FROM researcher 
                                    WHERE NameOrg = '$org'  ";
                
                                         
                                
                $fieldd = $conn->query($queryy);


                if ($fieldd->num_rows > 0) {
                  while ($row = $fieldd->fetch_assoc()) {
                    $fieldd_data[] = $row;
                  }
                 echo $org;
                 echo '<br>';
                foreach ($fieldd_data as $key => $value) {
               
                    echo $value['firstnew'];
                    echo str_repeat('&nbsp;', 20);
                    echo $value['secondnew'];
                    echo str_repeat('&nbsp;', 20);
                    echo $value['thirdnew'];

                    echo '<br>';
                    }

                }
            }      
                

                            
            
                         ?>

        </h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</section>

                <div class="section social-proof wf-section">
                    <div class="container grid-3">
                        <div class="column flex-center">
                        <section id = "now">
                            <h4 class="_10-margin">Έργα και Ερευνητές ανά επιστημονικό πεδίο</h4>
                        </div>
                    </div>
                    <div class="w-form">
                        <form action="#now" name="email-form-3" data-name="Email Form 3" method="get"><label
                                for="name-5" class="field-label-7">Επιστημονικό πεδίο</label><input type="text"
                                class="w-input" maxlength="256" name="nam" placeholder=""
                                id="nam" /><input type="submit" value="Submit" data-wait="Please wait..."
                                class="submit-button w-button" /></form>
                        <div class="w-form-done">
                            <div>Thank you! Your submission has been received!</div>
                        </div>
                        <div class="w-form-fail">
                            <div>Oops! Something went wrong while submitting the form.</div>
                        </div>
                    </div>
                    <div class="div-block-6">

<h4>
                             <?php

                            include 'connection-open.php';
                            if(isset($_GET['nam'])){
                            $epis=  $_GET['nam'];
                            $date = date("yyyy-mm-dd", strtotime(now));
                            

                            $queryyyy = "SELECT
                            researcher.FirstName as num1, researcher.LastName as num2, project.Title as num3
                            FROM about, project ,works, researcher
                            WHERE about.SciField = '$epis' and about.ProjectID=project.ProjectID and project.ProjectID=works.ProjectID and works.ResearchID=researcher.ResearchID 
                            and project.StartDate<=$date and project.EndDate>=$date
                            ";

                                

                            $fieldddd = $conn->query($queryyyy);


                            if ($fieldddd->num_rows > 0) {
                            while ($row = $fieldddd->fetch_assoc()) {
                            $fieldddd_data[] = $row;
                            }
                            echo '    Στο επιστημονικό πεδίο με θέμα:   ';
                            echo $epis;
                            echo '<br>';
                            echo '<br>';
                            foreach ($fieldddd_data as $key => $value) {
                                echo '  Ο/Η ';
                                echo str_repeat('&nbsp;', 5);
                                echo $value['num1'];
                                echo str_repeat('&nbsp;', 5);
                            echo $value['num2'];
                            echo str_repeat('&nbsp;', 5);
                            echo '    εργάζεται στο    ';
                            echo str_repeat('&nbsp;', 5);
                            echo $value['num3'];
                            echo str_repeat('&nbsp;', 5);
                            echo '<br>';
                            }

                            }
                            }      




                            ?>
                                  </h4>              
                    </div>
                    <div class="blue-line bottom">


                    
                    </div>
                    <div class="blue-line"></div>
                </div>


                <div data-w-id="7fddf232-87f5-9178-f759-6162de48fac6" class="section free-classes wf-section">
                    <div class="container">
                        <div class="column hero-image-column">
                            <div class="hero-slider-image-wrap">
                                <div class="text-block-2">Τοπ ζεύγη επιστημονικών πεδίων</div>
                                <div>

                                <h4>
                                    <?php
                        include 'connection-open.php';
                        ?>


                        <?php
                        include 'top-3-scien-fields.php';

                        foreach ($field_data as $key => $value) {
                            echo $value['first'];
                            echo '    και     ';
                            echo ' ';
                            echo $value['second'];
                            echo ' ';
                            echo '    εμφανίζονται    ';
                            echo $value['third'];
                            echo '    φορές     ';
                            echo '<br>';
                            }


                        ?>
                        </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-w-id="c0ad97f2-2461-377f-0d16-9bb4ea129ed1" class="section premium-classes wf-section">
                    <div class="container">
                        <div class="column hero-image-column">
                            <div class="hero-slider-image-wrap">
                                <div class="text-block-2">Νέοι ερευνητές και σε πόσα έργα εργάζονται</div>
                                <div>
<h4>
                                <?php
                        include 'connection-open.php';
                        ?>


                        <?php
                        include 'researchers-below40.php';

                        foreach ($field_data3 as $key => $value) {
                            echo 'Ο     ';
                            echo $value['newbfirst'];
                            echo ' ';
                            echo $value['newbsecond'];
                            echo ' ';
                            echo '    εργάζεται σε     ';
                            echo $value['newbthird'];
                            echo '     εργα   ';
                            echo '<br>';
                            }


                        ?>
</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-w-id="27409905-6ce8-acc7-ffa3-172cfd8407c0" class="section features wf-section">
                    <div class="container">
                        <div class="column hero-image-column">
                            <div class="hero-slider-image-wrap">
                                <div class="text-block-2">Τοπ 5 Στελέχη με την μεγαλύτερη χρηματοδότηση</div>
                                <div class="div-block-5">
                                <?php
                        include 'connection-open.php';
                        ?>

<h4>
                        <?php
                        include 'stelexoi-founding.php';

                        foreach ($field_data2 as $key => $value) {
                            echo $value['newafirst'];
                            echo ' ';
                            echo '    της εταιρίας   ';
                            echo $value['newasecond'];
                            echo ' ';
                            echo '    έχει προσφέρει χρηματοδοτήσεις αξίας   ';
                            echo $value['newathird'];
                            echo '    $    ';
                            echo '<br>';
                            echo '<br>';
                            }


                        ?>
                        </h4>
             
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div data-w-id="bbcb6398-da67-ef27-bdf7-289c267db707" class="section premium-classes wf-section">
                    <div class="container">
                        <div class="column hero-image-column">
                            <div class="hero-slider-image-wrap">
                                <div class="text-block-2">Ερευνητές που εργάζονται σε έργα χωρίς παραδοτέα</div>
                                <div>
                                                           
                <?php
                        include 'connection-open.php';
                        ?>

<h4>
                        <?php
                        include 'researcher-5-project-no-delivery.php';

                        foreach ($field_data1 as $key => $value) {
                            echo '    O   ';
                            echo $value['newfirst'];
                            echo ' ';
                            echo $value['newsecond'];
                            echo ' ';
                            echo '    εργάζεται σε    ';
                            echo $value['newthird'];
                            echo '    έργα χωρίς παραδοτέα   ';
                            echo '<br>';
                            }


                        ?>
                        </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script
                src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=6288b36eede9502ea4089b53"
                type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
                crossorigin="anonymous"></script>
            <script src="baseis.js"
                type="text/javascript"></script>
            <!--[if lte IE 9]><script src="//cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif]-->
           



       </body>

  </html>
