<?php

// no direct access
defined('_JEXEC') or die('Restricted access');

$label		= $params->get( 'label', '' );
$buttontext		= $params->get( 'buttontext', '' );
$resulttext		= $params->get( 'resulttext', '' );
$checkall		= $params->get( 'checkall', '' );
$pretext		= $params->get( 'pretext', '' );

?>

<?php if ($pretext != "") { ?>
<div style="margin-bottom:8px">
<?php echo $pretext ?>
</div>
<?php } ?>

<?php

    function checkDomain($domain,$server,$findText){
        // Open a socket connection to the whois server
        $con = fsockopen($server, 43);
        if (!$con) return false;
        
        // Send the requested doman name
        fputs($con, $domain."\r\n");
        
        // Read and store the server response
        $response = ' :';
        while(!feof($con)) {
            $response .= fgets($con,128); 
        }
        
        // Close the connection
        fclose($con);
        
        // Check the response stream whether the domain is available
        if (strpos($response, $findText)){
            return true;
        }
        else {
            return false;   
        }
    }
    
    function showDomainResult($domain,$server,$findText){
       if (checkDomain($domain,$server,$findText)){
          echo "<div style='margin-bottom:4px'>$domain Available</div>";
       }
       else echo "<div style='margin-bottom:4px'>$domain Taken</div>";
    }
?>

    <div id="main">
      <form action="" method="post" name="domain" id="domain">
	  <span style="font-weight:bold">
        <?php echo $label ?> :
	  </span>
		<div style="margin-top:8px; margin-bottom:8px">
				<input class="text" name="domainname" type="text" />
		</div>
		<div style="margin-top:8px; margin-bottom:8px">
		<div style="margin-bottom:8px">
                <input type="checkbox" name="all" checked="checked"/> <?php echo $checkall ?>
		</div>
                <input type="checkbox" name="com"/> .com
                <input type="checkbox" name="net"/> .net
                <input type="checkbox" name="org"/> .org
                <input type="checkbox" name="info"/> .info
		</div>
				<input class="button" type="submit" name="submitBtn" value="<?php echo $buttontext ?>"/>
      </form>
<?php    
    if (isset($_POST['submitBtn'])){
        $domainbase = (isset($_POST['domainname'])) ? $_POST['domainname'] : '';
        $d_all      = (isset($_POST['all'])) ? 'all' : '';    
        $d_com      = (isset($_POST['com'])) ? 'com' : '';    
        $d_net      = (isset($_POST['net'])) ? 'net' : '';    
        $d_org      = (isset($_POST['org'])) ? 'org' : '';    
        $d_info     = (isset($_POST['info'])) ? 'info' : '';    
        
        // Check domains only if the base name is big enough
        if (strlen($domainbase)>0){
?>
      <div id="caption" style="margin-top:8px; margin-bottom:8px; font-weight:bold"><?php echo $resulttext ?> :</div>
      <div id="result">

<?php        
            if (($d_com != '') || ($d_all != '') ) showDomainResult($domainbase.".com",'whois.crsnic.net','No match for');
            if (($d_net != '') || ($d_all != '') ) showDomainResult($domainbase.".net",'whois.crsnic.net','No match for');
            if (($d_org != '') || ($d_all != '') ) showDomainResult($domainbase.".org",'whois.publicinterestregistry.net','NOT FOUND');
            if (($d_info != '') || ($d_all != '') ) showDomainResult($domainbase.".info",'whois.afilias.net','NOT FOUND');
?>

     </div>
<?php            
        }
    }
?>    

    </div>

