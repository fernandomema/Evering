{extends file='layout.tpl'}
{block name="body-class"}bg-landingimage{/block}
{block name="head"}
    <style>
        /* Landing background */
        body {
            /* https://unsplash.com/photos/hDyO6rr3kqk */
            background-image: url('https://cdn.stocksnap.io/img-thumbs/960w/MUNCW5ZFUZ.jpg');
            background-size: cover;
            background-position:fixed;
        }
    </style>
{/block}
{block name=body}
<div class="container">
    <div class="card mt-5 bg-deepblur shadow-lg home-info">
        <div class="card-body">
            <h1 class="text-center">{$title}</h1>
            <div class="row mt-4 justify-content-center">
                <div class="col-12 col-lg-3">
                    <div class="card mb-3 bg-blur shadow-sm">
                        <div class="card-body">
                            <div class="row">
                                <div class="col mx-auto text-center">
                                    <i class="fas fa-book fa-4x text-info"></i>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-12 text-center">
                                    <p class="text-info">{lang key='documentation'}</p>
                                    <p>{lang key='documentationDesc'}</p>
                                    <button class="btn btn-info mt-3 px-4">{lang key='clickHere'}</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-3">
                    <div class="card mb-3 bg-blur shadow-sm">
                        <div class="card-body">
                            <div class="row">
                                <div class="col mx-auto text-center">
                                    <i class="fas fa-newspaper fa-4x text-warning"></i>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-12 text-center">
                                    <p class="text-info">{lang key='news'}</p>
                                    <p>{lang key='newsDesc'}</p>
                                    <button class="btn btn-warning mt-3 px-4">{lang key='clickHere'}</button> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-3">
                    <div class="card mb-3 bg-blur shadow-sm">
                        <div class="card-body">
                            <div class="row">
                                <div class="col mx-auto text-center">
                                    <i class="fab fa-github fa-4x text-danger"></i>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-12 text-center">
                                    <p class="text-info">GitHub</p>
                                    <p>{lang key='githubDesc'}</p> 
                                    <button class="btn btn-danger mt-3 px-4">{lang key='clickHere'}</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{/block}