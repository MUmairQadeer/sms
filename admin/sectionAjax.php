<?php include('../includes/config.php'); ?>

<?php
if(isset($_POST['class_id']) && !empty($_POST['class_id'])){
    $class_id = $_POST['class_id'];
    
    $class_meta = (get_metadata( $class_id, 'section'))[0]->meta_value;
  


    $values =explode(",", $class_meta);
    $sections = [];
  
    foreach ($values as $value) {
        $section= get_post(array('id'=>$value)); 
        if($section){
            $sections[] = $section; 
        
        }
    }
      

    if(!empty($sections)){
        echo '<option value="" disabled selected>Select Section</option>';
        foreach ($sections as $section) {
            echo '<option value="'.$section->id.'">'.$section->title.'</option>';
        }
    }else{
        echo '<option value="">No sections available</option>';
    }
}else{
    echo '<option value="">Select Section</option>';
}


?>