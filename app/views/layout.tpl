<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            {block name="title"}{$title}{/block}
        </title>

        <!-- Stylesheets references -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />
        <link rel="stylesheet" href="{$site_root}/assets/css/evering.css">
        {block name="head"}{/block}
    </head>

    <body class="{block name="body-class"}{/block}">
        {block name="nav"}
        <nav class="navbar navbar-expand-md navbar-dark bg-blackblur">
            <a href="/" class="navbar-brand">{block name="nav-title"}{$title}{/block}</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar7">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse collapse justify-content-stretch" id="navbar7">
                <ul class="navbar-nav ml-auto">
                    {block name="nav-links-before"}{/block}
                    <li class="nav-item">
                        <a class="nav-link" href="{{$router->generate('home')}}">Home</a>
                    </li>
                    {block name="nav-links-after"}{/block}
                </ul>
            </div>
        </nav>
        {/block}

        {block name="body"}{/block}
        
        <!-- Scripts section -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        {block name="scripts"}{/block}
    </body>

</html>