@extends('web.layouts.default')
    @section('link_css')
        <link rel="stylesheet" href="/web-assets/libs/lightslider/css/lightslider.min.css">
        
        <link rel="stylesheet" href="/web-assets/css/feature-detail.css">


        <script src="/web-assets/libs/lightslider/js/lightslider.min.js"></script>
        
    @endsection
    @section('content')
    <body class="my-profile-page">


        <div id="wrapper">
            <div id="inner-wrapper">
                <div class="page-header">
                    <div class="page-title">
                        <div class="container">
                            <img src="/web-assets/images/tohoku-media.svg" alt="">
                        </div>
                    </div>
                </div>

                <section class="feature-detail">
                    <div class="container">

                        <div class="image-gallery">
                            <div class="item" data-thumb="/web-assets/images/demo/1.png">
                                <img src="/upload/{{$feature->image}}" alt="">
                            </div>
                            <div class="item" data-thumb="/web-assets/images/demo/1.png">
                                <img src="/web-assets/images/demo/1.png" alt="">
                            </div>
                            <div class="item" data-thumb="/web-assets/images/demo/1.png">
                                <img src="/web-assets/images/demo/1.png" alt="">
                            </div>
                            <div class="item" data-thumb="/web-assets/images/demo/1.png">
                                <img src="/web-assets/images/demo/1.png" alt="">
                            </div>
                            <div class="item" data-thumb="/web-assets/images/demo/1.png">
                                <img src="/web-assets/images/demo/1.png" alt="">
                            </div>
                            <div class="item" data-thumb="/web-assets/images/demo/1.png">
                                <img src="/web-assets/images/demo/1.png" alt="">
                            </div>
                            <div class="item" data-thumb="/web-assets/images/demo/1.png">
                                <img src="/web-assets/images/demo/1.png" alt="">
                            </div>
                            <div class="item" data-thumb="/web-assets/images/demo/1.png">
                                <img src="/web-assets/images/demo/1.png" alt="">
                            </div>
                            <div class="item" data-thumb="/web-assets/images/demo/1.png">
                                <img src="/web-assets/images/demo/1.png" alt="">
                            </div>
                            <div class="item" data-thumb="/web-assets/images/demo/1.png">
                                <img src="/web-assets/images/demo/1.png" alt="">
                            </div>
                        </div>

                        <div style="padding: 15px 0 20px;">
                            <div class="date">{{$feature->created_at}} UP!</div>
                            <div class="post-title">{{$feature->name}}</div>

                            <div class="d-flex justify-content-end">
                                @if(Auth::check())
                                <input type="hidden" name="user_id" id="user_id" value="{{$user->id}}">
                                <input type="hidden" name="posts_id" id="posts_id" value="{{$feature->id}}">
                                <a onclick="favorite()">
                                @else
                                <a>
                                @endif
                                <div class="favorite-count">
                                    <img width="16" src="/web-assets/images/icons/heart-gray.svg" alt=""> 
                                    <span class="count count-number">{{$feature->favorite}}</span>
                                </div>
                                </a>

                            </div>
                        </div>

                    </div>

                    <div class="image-carousel">
                        <div class="container">
                            <div class="slider owl-carousel">
                                <?php
                                $sub_image = trim($feature->sub_image , '"[]');
                                $arr = explode(",", $sub_image);
                                if($arr[0] != ''){
                                    for($i =0;$i< count($arr);$i++)
                                    {
                                        $value = trim($arr[$i] , '"');
                                ?>
                                <div class="item">
                                    <img src="/upload/{{$value}}" alt="" onerror='this.onerror=null;this.src="/web-assets/images/demo/1.png"'>
                                </div>
                                <?php
                                    }
                                }
                                ?>
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="post-main-content typo-default py-30">
                            <h3>{{$feature->name}}</h3>
                            <p>
                            {{$feature->intro}}
                            </p>
                            <figure class="aligncenter">
                                <img src="/upload/{{$feature->image}}" alt="">
                            </figure>
                            <!-- <h3>はやぶさとこまちの連結・切り離し</h3>
                            <p>
                                仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子仙台から全国へ弾丸する男子
                            </p>
                            <figure class="aligncenter">
                                <img src="/web-assets/images/demo/1.png" alt="">
                            </figure> -->
                        </div>
                    </div>

                </section>
            </div> <!-- /inner-wrapper -->
        </div> <!-- /wrapper -->

        


        <div id="number-6-button-actions" class="modal modal-bottom">
            <div class="modal_backdrop"></div>
            <div class="modal_dialog">
                <div class="modal_close">×</div>
                <ul class="modal_menu">
                    <li>
                        <a href="spot-register.html">スポット登録をする</a>
                    </li>
                    <li>
                        <a href="#n">トウホクポイントを使う</a>
                    </li>
                    <li>
                        <a href="#n">トウホクシックスとは？</a>
                    </li>
                    <li>
                        <a href="#n">トウホクポイントとは？</a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="user-notification-modal" class="modal user-notification-modal">
            <div class="modal_backdrop"></div>
            <div class="modal_dialog">
                <div class="modal_close">×</div>
                <div class="modal_title">通知</div>
                <ul class="user-notification_list custom-scrollbar">
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                    <li class="d-flex align-items-center">
                        <div class="date">2022.10.10</div>
                        <div class="flex-fill content">投稿スポットが公開されました</div>
                    </li>
                </ul>
            </div>
        </div>
        
        <div id="ajax-loading-overlay" class="ajax-loading-overlay">
            <div class="ajax-loading_container">
                <div class="loading-icon"></div>
                <div class="result-message"></div>
            </div>            
        </div>


        <div class="fixed-number-6 d-flex align-items-center justify-content-center" data-show-modal="#number-6-button-actions">
            <div>
                <img src="/web-assets/images/number-6.svg" alt="" class="d-block">
            </div>
        </div>

        
        <script src="/web-assets/js/components.js"></script>
        <script src="/web-assets/js/main.js"></script>
        <script src="/web-assets/js/tohoku-calendar.js"></script>
        <script src="/web-assets/js/event.js"></script>
        
    </body>
    @endsection
