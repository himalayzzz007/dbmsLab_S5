<?php



    //declaring
    $error = '';
    $fname = '';
    $lname = '';
    $rollno = '';
    $email = '';



    //insert function
    if(isset($_POST["submit"]))
    {
        if(empty($_POST["fname"]))
        {
            $error .= '<p><font color=red>Please Enter your First Name</font></p>';
        }
        else
        {
            $fname = $_POST["fname"];
        }
        if(empty($_POST["lname"]))
        {
            $error .= '<p><font color=red>Please Enter your Last Name</font></p>';
        }
        else
        {
            $lname = $_POST["lname"];
        }
        if(empty($_POST["rollno"]))
        {
        $error .= '<p><font color=red>Please Enter your Roll Number</font></p>';
        }
        else
        {
            $rollno = $_POST["rollno"];
        }
        if(empty($_POST["email"]))
        {
            $error .= '<p><font color=red>Please Enter your Email</font></p>';
        }
        else
        {
            $email = $_POST["email"];
        }



        //setting up the csv file
        if($error == '')
        {
            $file_open = fopen("student.csv", "a");

            $form_data = array(
            'fname'  => $fname,
            'lname'  => $lname,
            'rollno' => $rollno,
            'email' => $email
            );

            fputcsv($file_open, $form_data);

            $error = '';
            $fname = '';
            $lname = '';
            $rollno = '';
            $email = '';
        }
    }



    //delete function
    if(isset($_POST["delete"]))
    {
        $student = fopen("student.csv", "a+");
        $student_temp = fopen("student_temp.csv", "w");

        $rollno = $_POST["rollno"];

        while(($data = fgetcsv($student)) !== false)
        {
            if(in_array($rollno, $data))
            {
                continue;
            }
            fputcsv($student_temp, $data);
        }

        fclose($student);
        fclose($student_temp);

        rename('student_temp.csv','student.csv');
    }



    //search function
    if(isset($_POST["search"]))
    {
        $file = fopen("student.csv", "r");
        $rollno = $_POST["rollno"];

        $check = 0;

        while (($data = fgetcsv($file)) !== false)
        {
            if(in_array($rollno, $data))
            {
                foreach ($data as $i)
                    {
                        $check = 1;
                        echo "<p><center>".$i."</center></p>";
                    }
            }
        }

        if($check == 0)
        {
            echo "<p><font color = red><center>Student details not found</center></font></p>";
        }
        fclose($file);
    }



    //update function
    if(isset($_POST["update"]))
    {
        $student = fopen("student.csv", "a+");
        $student_temp = fopen("student_temp.csv", "w");

        $rollno = $_POST["rollno"];

        $fname = $_POST["fname"];
        $lname = $_POST["lname"];
        $email = $_POST["email"];

        while(($data = fgetcsv($student)) !== false)
        {
            if(in_array($rollno, $data))
            {
                if(empty($_POST["fname"]))
                {
                    $one = $data[0];
                }
                else
                {
                    $one = $_POST["fname"];
                }
                if(empty($_POST["lname"]))
                {
                    $two = $data[1];
                }
                else
                {
                    $two = $_POST["lname"];
                }
                if(empty($_POST["email"]))
                {
                    $four = $data[3];
                }
                else
                {
                    $four = $_POST["email"];
                }

                $data = array(
                'fname'  => $one,
                'lname'  => $two,
                'rollno' => $rollno,
                'email' => $four
                );

            }
            fputcsv($student_temp, $data);
        }

        fclose($student);
        fclose($student_temp);

        rename('student_temp.csv','student.csv');
    }



    //display function
    if(isset($_POST["display"]))
    {
        echo "<html><body><center><table>\n\n";

        $file = fopen("student.csv", "r");

        //taking data from csv file
        while (($data = fgetcsv($file)) !== false)
        {
            echo "<tr>";
            //echo "<td>""First Name""</td>""<td>""Last Name""</td>""<td>""Roll Number""</td>""<td>""Email ID""</td>";
            foreach ($data as $i)
            {
                echo "<td>" .$i
                    . "</td>";
            }
            echo "</tr> \n";
        }

        fclose($file);

        echo "\n</table></center></body></html>";
    }



?>



<!DOCTYPE html>
<html>
    <head>

        <title>Enter Student Details</title>

    </head>
    <body>
        <center>
        <div class="container">
            <h2>Enter Student Details</h2>
            <div>
                <form method="post">
                    <?php echo $error; ?>
                    <div>
                        <label>First Name :  </label>
                        <input type="text" name="fname" value="<?php echo $fname; ?>" />
                    </div>

                    <br>

                    <div>
                        <label>Last Name :   </label>
                        <input type="text" name="lname" value="<?php echo $lname; ?>" />
                    </div>

                    <br>

                    <div>
                        <label>Roll Number : </label>
                        <input type="text" name="rollno" value="<?php echo $rollno; ?>" />
                    </div>

                    <br>

                    <div>
                        <label>Email :       </label>
                        <input type="email" name="email" value="<?php echo $email; ?>" />
                    </div>

                    <br>

                    <div>
                        <input type="submit" name="submit" value="Insert" />
                        <input type="submit" name="delete" value="Delete" />
                        <input type="submit" name="search" value="Search" />
                        <input type="submit" name="update" value="Update" />
                        <input type="submit" name="display" value="Display" />
                    </div>
                </form>
            </div>
        </div>
        </center>
    </body>
</html>
