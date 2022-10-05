function find_category(){
    var checkbox = document.getElementsByName("category-select");
    // alert(checkbox);
    for (var i = 0; i < checkbox.length; i++){
        if (checkbox[i].checked === true){
            // alert(checkbox[i].value);
            let num = checkbox[i].value;
            console.log(String(num));
            var formData = new FormData();
            formData.append('category',String(checkbox[i].value));

            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  },
                url: "postfindByCategorySpot",
                type: 'post',
                dataType: "json",
                async: false,
                processData: false,
                contentType: false,
                data: formData,
                success: function (data) {
                    if(data.list_category.length > 0){
                        var html = ``;
                        for(var i = 0; i< data.list_category.length;i++){
                            html += `
                            <div class="col-sm-6 col-lg-4">
                                <div class="post-item-5 d-flex">
                                    <div class="thumb">
                                        <div class="icon-star">
                                            <img src="upload/{{$value->image}}" alt="">
                                        </div>
                                        <a href="spot-detail/`+ data.list_category[i].id +`">
                                            <div class="ratio thumb-image">
                                                <img src="`+ data.arr_image[i] +`" alt="">
                                            </div>
                                        </a>
                                    </div>
                                    <div class="item-content flex-fill d-flex flex-column justify-content-between">
                                        <div class="area d-flex align-items-center">
                                            <div class="icon"></div>
                                            <div>
                                                <img src="/web-assets/images/area/akita.svg" alt="">
                                            </div>
                                        </div>
                                        <a href="spot-detail/`+ data.list_category[i].id +`">
                

                                            <div class="item-title">`+ data.list_category[i].name +` .<span class="text-latin">RISING SUN</span></div>
                                        </a>
                                        <div class="counters d-flex align-items-center justify-content-end justify-content-lg-start">
                                            <div class="comment-count">
                                                コメント
                                                <div class="count text-latin ml-10">`+ data.list_category[i].count_comment +`</div>
                                            </div>
                                            <div class="favorite-count ml-20">
                                                <img src="/web-assets/images/icons/heart-gray.svg" alt=""> 
                                                <span class="count text-latin">`+ data.list_category[i].favorite +`</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            `;

                        }
                    }
                    else {
                        var html = '';
                    }
                    $('.list-category').html(html);
        
                    // $('.list-category').data('owl.carousel').destroy(); 
                    $('.list-category').owlCarousel({touchDrag: false, mouseDrag: false});
                    var owl = $("#dom");
                        owl.owlCarousel({
                        autoPlay: false,
                        dots: false,
                        nav: true,
                        margin: 20,
                        navText: ['', ''],
                        slideBy: 'page',        
                        responsive: {
                            0: {
                                items: 1,
                                autoWidth: true
                            },
                            576: {
                                items: 2,
                                autoWidth: true          
                            },
                            992: {
                                items: 3,
                                autoWidth: false
                            }
                        }
                    });
                }
            });

        }
    }
}

function sort(id){
    var formData = new FormData();
    formData.append('id',id);
    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
        url: "sort_spot",
        type: 'post',
        dataType: "json",
        async: false,
        processData: false,
        contentType: false,
        data: formData,
        success: function (data) {
            if(data.list_spot.length > 0){
                var html = ``;
                for(var i = 0; i< data.list_spot.length;i++){
                    html += `
                    <div class="col-sm-6 col-lg-4">
                        <div class="post-item-5 d-flex">
                            <div class="thumb">
                                <div class="icon-star">
                                    <img src="upload/{{$value->image}}" alt="">
                                </div>
                                <a href="spot-detail/`+ data.list_spot[i].id +`">
                                    <div class="ratio thumb-image">
                                        <img src="`+ data.arr_image[i] +`" alt="">
                                    </div>
                                </a>
                            </div>
                            <div class="item-content flex-fill d-flex flex-column justify-content-between">
                                <div class="area d-flex align-items-center">
                                    <div class="icon"></div>
                                    <div>
                                        <img src="/web-assets/images/area/akita.svg" alt="">
                                    </div>
                                </div>
                                <a href="spot-detail/`+ data.list_spot[i].id +`">
        

                                    <div class="item-title">`+ data.list_spot[i].name +` .<span class="text-latin">RISING SUN</span></div>
                                </a>
                                <div class="counters d-flex align-items-center justify-content-end justify-content-lg-start">
                                    <div class="comment-count">
                                        コメント
                                        <div class="count text-latin ml-10">`+ data.list_spot[i].count_comment +`</div>
                                    </div>
                                    <div class="favorite-count ml-20">
                                        <img src="/web-assets/images/icons/heart-gray.svg" alt=""> 
                                        <span class="count text-latin">`+ data.list_spot[i].favorite +`</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    `;

                }
            }
            else {
                var html = '';
            }
            $('.list-category').html(html);
            
                    // $('.list-category').owlCarousel({touchDrag: false, mouseDrag: false});

        }
    });
}