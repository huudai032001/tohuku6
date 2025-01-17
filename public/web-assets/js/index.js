function find_by_day(year,month,day){
    let formData = new FormData();
    formData.append('year',year);
    formData.append('month',month);
    formData.append('day',day);

    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
        url: "/",
        type: 'post',
        dataType: "json",
        async: false,
        processData: false,
        contentType: false,
        data: formData,
        success: function (data) {

            if(data.list_event.length > 0){
                var html = ``;
                for(var i = 0;i<data.list_event.length;i++){
                console.log( data.list_event[i]);
                    
                    html += `
                    <div class="item">
                        <div class="post-item-1">
                            <a href="/event-detail/`+ data.list_event[i].alias +`">
                                <div class="thumb ratio thumb-hover-anim">
                                    <img src="`+ data.arr_image[i] +`" alt="">
                                </div>
                            </a>
                            <div class="item-content">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="flex-fill">
                                        <div class="date text-latin">`+ data.list_event[i].created_at +` UP!</div>
                                    </div>
                                    <div class="flex-auto ml-20">
                                        <img width="16" src="/web-assets/images/icons/heart-gray.svg" alt=""> 
                                        <span class="count text-latin">123</span>
                                    </div>
                                </div>
                                <div class="title">
                                    <a href="">
                                    `+ data.list_event[i].name +`
                                    </a>
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
            $('#dom').html(html);

            $('#dom').data('owl.carousel').destroy(); 
            $('#dom').owlCarousel({touchDrag: false, mouseDrag: false});
        },
    });
}

function find_category(){
    var checkbox = document.getElementsByName("category-select");
    // alert(checkbox);
    for (var i = 0; i < checkbox.length; i++){
        if (checkbox[i].checked === true){
            // alert(checkbox[i].value);
            var formData = new FormData();
            formData.append('category',checkbox[i].value);

            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  },
                url: "postfindByCategory",
                type: 'post',
                dataType: "json",
                async: false,
                processData: false,
                contentType: false,
                data: formData,
                success: function (data) {
                    // console.log(data);
                    if(data.list_category.length > 0){
                        var html = ``;
                        for(var i = 0; i< data.list_category.length;i++){
                            html += `
                            <div class="item">
                                <div class="post-item-2">
                                    <a href="event-detail/`+ data.list_category[i].alias +`">
                                        <div class="thumb ratio thumb-hover-anim">
                                            <img src="`+ data.arr_image[i] +`" alt="">
                                        </div>
                                    </a>
                                    <div class="item-content">
                                        <div class="d-none d-sm-flex justify-content-end align-items-center">
                                            <div class="comment-count">
                                                コメント
                                                <div class="count text-latin ml-10">`+ data.list_category[i].favorite +`</div>
                                            </div>
                                            <div class="favorite-count ml-20">
                                                <img width="16" src="/web-assets/images/icons/heart-gray.svg" alt=""> 
                                                <span class="count text-latin">`+ data.list_category[i].count_comment +`</span>
                                            </div>
                                        </div>
                                        <div class="title">
                                            <a href="event-detail/`+ data.list_category[i].alias +`">`+ data.list_category[i].name +`・</a>
                                        </div>
                                    </div>
                                </div>
                            </div>`;

                        }
                    }
                    else {
                        var html = '';
                    }
                    $('.list-category').html(html);
        
                    $('.list-category').data('owl.carousel').destroy(); 
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

function find_location(){
    var location;
    var checkbox = document.getElementsByName("area-select");
    for (var i = 0; i < checkbox.length; i++){
        if (checkbox[i].checked === true){
            location = checkbox[i].value;
        }
    }
    // console.log(location);
    var formData = new FormData();
    formData.append('location',location);

    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
        url: "/find_by_location",
        type: 'post',
        dataType: "json",
        async: false,
        processData: false,
        contentType: false,
        data: formData,
        success: function (data) {
            console.log(data.list_spot);
            if(data.list_spot.length > 0){
                var html = ``;
                for(var i = 0; i< data.list_spot.length;i++){
                    html += `
                    <div class="item">
                        <div class="post-item-2">
                            <a href="spot-detail/`+ data.list_spot[i].alias +`">
                                <div class="thumb ratio thumb-hover-anim">
                                    <img src="`+ data.arr_image[i] +`" alt="">
                                </div>
                            </a>
                            <div class="item-content">
                                <div class="d-none d-sm-flex justify-content-end align-items-center">
                                    <div class="comment-count">
                                        コメント
                                        <div class="count text-latin ml-10">`+ data.list_spot[i].favorite +`</div>
                                    </div>
                                    <div class="favorite-count ml-20">
                                        <img width="16" src="/web-assets/images/icons/heart-gray.svg" alt=""> 
                                        <span class="count text-latin">`+ data.list_spot[i].count_comment +`</span>
                                    </div>
                                </div>
                                <div class="title">
                                    <a href="spot-detail/`+ data.list_spot[i].alias +`">`+ data.list_spot[i].name +`・</a>
                                </div>
                            </div>
                        </div>
                    </div>`;

                }
            }
            else {
                var html = '';
            }
            $('.list-category').html(html);

            $('.list-category').data('owl.carousel').destroy(); 
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
function find_location_two(){
    var location;
    var checkbox = document.getElementsByName("area-select");
    for (var i = 0; i < checkbox.length; i++){
        if (checkbox[i].checked === true){
            location = checkbox[i].value;
        }
    }
    // console.log(location);
    var formData = new FormData();
    formData.append('location',location);

    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
        url: "/find_by_location_event",
        type: 'post',
        dataType: "json",
        async: false,
        processData: false,
        contentType: false,
        data: formData,
        success: function (data) {
            if(data.list_event.length > 0){
                var html = ``;
                for(var i = 0; i< data.list_event.length;i++){
                    html += `
                    <div class="item">
                        <div class="post-item-1">
                            <a href="/event-detail/`+ data.list_event[i].alias +`">
                                <div class="thumb ratio thumb-hover-anim">
                                    <img src="`+ data.arr_image[i] +`" alt="">
                                </div>
                            </a>
                            <div class="item-content">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="flex-fill">
                                        <div class="date text-latin">`+ data.list_event[i].created_at +` UP!</div>
                                    </div>
                                    <div class="flex-auto ml-20">
                                        <img width="16" src="/web-assets/images/icons/heart-gray.svg" alt=""> 
                                        <span class="count text-latin">123</span>
                                    </div>
                                </div>
                                <div class="title">
                                    <a href="">
                                    `+ data.list_event[i].name +`
                                    </a>
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
            $('#dom').html(html);

            $('#dom').data('owl.carousel').destroy(); 
            $('#dom').owlCarousel({touchDrag: true, mouseDrag: true, dots: true,});
        }
    });

}