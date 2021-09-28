<?php

$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$sexe = $_POST['sexe'];
$dateden = $_POST['dateden'];
$codepos = $_POST['codepostal'];
$address = $_POST['addresse'];
$ville = $_POST['ville'];
$email = $_POST['email'];
$sujet = $_POST['sujet'];
$question = $_POST['question'];
$validation = $_POST['validation'];

// $_POST['INSERT/NAME']

if (empty($_POST["nom"])) 
{       
    header("Location:contact.php?erreur=nom");
    exit;
} 

if (empty($_POST["prenom"])) 
{
    header("Location:contact.php?erreur=prenom");
    exit;
} 

if (empty($_POST['sexe']))
{
    header("Location:contact.php?erreur=sexe");
    exit;
}

if (empty($_POST['dateden']))
{
    header("Location:contact.php?erreur=dateden");
    exit;
}

if (empty($_POST['codepostal']))
{
    header("Location:contact.php?erreur=codepostal");
    exit;
}

if (empty($_POST['addresse']))
{
    header("Location:contact.php?erreur=addresse");
    exit;
}

if (empty($_POST['ville']))
{
    header("Location:contact.php?erreur=ville");
    exit;
}

if (empty($_POST['email']))
{
    header("Location:contact.php?erreur=email");
    exit;
}

if (empty($_POST['sujet']))
{
    header("Location:contact.php?erreur=sujet");
    exit;
}

if (empty($_POST['question']))
{
    header("Location:contact.php?erreur=question");
    exit;
}

if (empty($_POST['validation']))
{
    header("Location:contact.php?erreur=validation");
    exit;
}

?>