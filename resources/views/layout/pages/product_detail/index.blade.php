@include('layout.component.header')
<title>{{ $product->pro_name}}</title>
<div id="product">
   <div class="wrp">
      <div class="nameCate lsh">
         <a href="javascript://" class="name">{{ $product->pro_name}} </a>
      </div>
      <div class="detailPro">
         <div class="top">
            <div class="left">
               <div class="imgSmall">
                  <div class="img">
                     <div class="wImage">
                        <a href="javascript://" class="image">
                           <img src="{{ pare_url_file($product->pro_avatar) }}" />
                        </a>
                     </div>
                  </div>
                  <div class="img">
                     <div class="wImage">
                        <a href="javascript://" class="image">
                           <img src="https://www.dangquangwatch.vn/upload/img_small/331971811_Untitled-7.jpg" />
                        </a>
                     </div>
                  </div>
                  <div class="img">
                     <div class="wImage">
                        <a href="javascript://" class="image">
                           <img src="https://www.dangquangwatch.vn/upload/img_small/281480432_Untitled-63.jpg" />
                        </a>
                     </div>
                  </div>
               </div>
               <div class="imgLarge">
                  <div class="img">
                     <div class="wImage">
                        <a href="javascript://" class="image">
                           <img src="{{ pare_url_file($product->pro_avatar) }}" />
                        </a>
                     </div>
                  </div>
                  <div class="img">
                     <div class="wImage">
                        <a href="javascript://" class="image">
                           <img src="https://www.dangquangwatch.vn/upload/img_big/331971811_Untitled-7.jpg" />
                        </a>
                     </div>
                  </div>
                  <div class="img">
                     <div class="wImage">
                        <a href="javascript://" class="image">
                           <img s="https://www.dangquangwatch.vn/upload/img_big/281480432_Untitled-63.jpg" />
                        </a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="right">
               <h1 style="position:relative"><a href="javascript://" class="namePro">{{ $product->pro_name}}</a> <i class="fa fa-eye"></i>&nbsp; {{ $product->pro_view }}
                  <a href="{{ route('ajax_get.user.favourite', $product->id) }}" class="{{ !\Auth::id() ? 'js-login' :''}} js-add-favourite"><i class="{{ !$user_favourite ?'fa fa-heart-o' : 'fa fa-heart red' }}"></i></a>&nbsp;<div class="favourite" style="position: absolute;bottom: 0;margin-left: 60px;"> {{ $product->pro_favourite }}</div>
               </h1>
               <div class="price">
                  <div class="price1">
                     <span class="text">Gi?? ni??m y???t </span>
                     <span class="numb cc4161c">{{ number_price($product->pro_price,$product->pro_sale)}}??</span>
                     @if($product->pro_sale > 0)
                     <span class="numb cc4161c" style="text-decoration: line-through;position: absolute;padding: 20px 150px;">{{ number_format($product->pro_price,0,',','.')}}??</span>
                     @endif
                  </div>
               </div>
               <h3 class="descript">
                  <div class="item">
                     <span class="text">???????ng k??nh m???t</span>
                     <span class="num">27mm</span>
                  </div>
                  <div class="item">
                     <span class="text">????? ch???u n?????c</span>
                     <span class="num">3ATM</span>
                  </div>
                  <div class="item">
                     <span class="text">Ch???t li???u m???t</span>
                     <span class="num">K??nh sapphire</span>
                  </div>
                  <div class="item">
                     <span class="text">N??ng l?????ng s??? d???ng</span>
                     <span class="num">Quartz/Pin </span>
                  </div>
               </h3>
               <div class="btnCart">
                  <a class="muangay" href="{{ route('get.shopping.add',$product->id) }}">
                     <span>Mua ngay</span>
                     <span>Giao h??ng mi???n ph?? - Thanh to??n t???i nh??</span>
                  </a>
               </div>

               @php
               $tags=explode(",",$product->keywordseo)
               @endphp
               @if(count($tags)>1)
               <legend>T??? kh??a</legend>
               <p><i class="fa fa-tag"></i>
                  @foreach($tags as $tag)
                  <a href="javascript:;" style=" color: #00d4c0 !important;font-size:20px"># {{$tag}}</a>
                  @endforeach
                  @endif
               </p>
            </div>
         </div>
         <div class="bot">
            <div class="detail">
               <div class="otherPro slideRes">
                  <h3 class="title">C?? th??? b???n s??? th??ch</h3>
                  <div class="group">
                     @foreach($productSuggest as $productList)
                     @include('layout.pages.product_detail.product_relate',['product'=>$productList])
                     @endforeach
                  </div>
               </div>
               <div class="dn dbTablet">
                  <div class="thongsokythuat">
                     <div class="titleR">Th??ng s??? k??? thu???t</div>
                     <div class="group">
                        <div class="item">
                           <p class="text1">???????ng k??nh m???t</p>
                           <p class="text2"><a href="javarscript://">27mm</a></p>
                        </div>
                        <div class="item">
                           <p class="text1">Ch???ng n?????c</p>
                           <p class="text2"><a href="javarscript://">3ATM</a></p>
                        </div>
                        <div class="item">
                           <p class="text1">Ch???t li???u m???t</p>
                           <p class="text2">K??nh sapphire</p>
                        </div>
                        <div class="item">
                           <p class="text1">N??ng l?????ng s??? d???ng</p>
                           <p class="text2">Quartz/Pin </p>
                        </div>
                        <div class="item">
                           <p class="text1">Size d??y</p>
                           <p class="text2">12mm</p>
                        </div>
                        <div class="item">
                           <p class="text1">Ch???t li???u d??y</p>
                           <p class="text2">H???p kim m??? PVD</p>
                        </div>
                        <div class="item">
                           <p class="text1">Ch???t li???u v???</p>
                           <p class="text2">H???p kim m??? PVD , ????nh ???? swarovsky</p>
                        </div>
                        <div class="item">
                           <p class="text1">Ki???u d??ng</p>
                           <p class="text2">N???</p>
                        </div>
                        <div class="item">
                           <p class="text1">Xu???t x???</p>
                           <p class="text2">China</p>
                        </div>
                        <div class="item">
                           <p class="text1">Ch??? ????? b???o h??nh</p>
                           <p class="text2">B???o h??nh qu???c t??? <b>10</b> n??m</p>
                        </div>
                     </div>
                  </div>

                  <div class="box_policy">
                     <div class="fs14">
                        <img class="mr-1" src="/view/css/icon/box.png" height="17">
                        S???n ph???m Fullbox:
                     </div>
                     <div style="display: flex;padding-top: 5px;font-style: italic;">
                        <a class="name" href="javascript://"> <span>
                              H???p ?????ng, th??? b???o h??nh qu???c t???, th??? kh??ch h??ng th??n thi???t, kh??n lau (?????i v???i k??nh m???t)</span>
                        </a>
                     </div>
                     <div class="pt10 fs14">
                        <img class="mr-1" src="/view/css/icon/bh10.png" height="17">
                        <a class="name" href="/chinh-sach-chung/2/1.-Chinh-sach-bao-hanh.html">
                           Ch??? ????? b???o h??nh 10 n??m <span>(Xem chi ti???t)</span>
                        </a>
                     </div>
                     <div class="pt10 fsfs1416">
                        <img class="mr-1" src="/view/css/icon/doi.png" height="17">
                        <a class="name" href="javascript://">
                           30 ng??y ?????i s???n ph???m mi???n ph??.
                        </a>
                     </div>
                     <div class="pt10 fs14">
                        <img class="mr-1" src="/view/css/icon/ship.png" height="17">
                        <a class="name" href="javascript://">
                           Giao mi???n ph??, nh???n h??ng ki???m tra tr?????c khi thanh to??n
                        </a>
                     </div>
                     <div class="pt10 fs14">
                        <img class="mr-1" src="/view/css/icon/vat.png" height="17">
                        <a class="name" href="javascript://">
                           Ch??nh h??ng 100% - xu???t ho?? ????n VAT
                        </a>
                     </div>
                  </div>
               </div>
               <div class="splienquan">
                  <div class="item">
                     <div class="left">
                        <div class="wImage">
                           <a href="javascript://" class="image">
                              <img src="{{ pare_url_file($product->pro_avatar) }}" class="lazy" src="/view/lazy.jpg" />
                           </a>
                        </div>
                        <div class="info">
                           <a href="javascript://" class="name">
                              {{ $product->pro_name}}
                           </a>
                           <p class="price">{{ number_format($product->pro_price,0,',','.')}}?? </p>
                        </div>
                     </div>
                     <div class="lstBtn">
                        <a href="{{ route('get.shopping.add' ,$product->id) }}" class="buttn muangay">Mua ngay</a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="detailRight">
               <div class="dntablet">
                  <div class="thongsokythuat">
                     <div class="titleR">Th??ng s??? k??? thu???t</div>
                     <div class="group">
                        <div class="item">
                           <p class="text1">???????ng k??nh m???t</p>
                           <p class="text2"><a href="javarscript://">27mm</a></p>
                        </div>
                        <div class="item">
                           <p class="text1">Ch???ng n?????c</p>
                           <p class="text2"><a href="javarscript://">3ATM</a></p>
                        </div>
                        <div class="item">
                           <p class="text1">Ch???t li???u m???t</p>
                           <p class="text2">K??nh sapphire</p>
                        </div>
                        <div class="item">
                           <p class="text1">N??ng l?????ng s??? d???ng</p>
                           <p class="text2">Quartz/Pin </p>
                        </div>
                        <div class="item">
                           <p class="text1">Size d??y</p>
                           <p class="text2">12mm</p>
                        </div>
                        <div class="item">
                           <p class="text1">Ch???t li???u d??y</p>
                           <p class="text2">H???p kim m??? PVD</p>
                        </div>
                        <div class="item">
                           <p class="text1">Ch???t li???u v???</p>
                           <p class="text2">H???p kim m??? PVD , ????nh ???? swarovsky</p>
                        </div>
                        <div class="item">
                           <p class="text1">Ki???u d??ng</p>
                           <p class="text2">N???</p>
                        </div>
                        <div class="item">
                           <p class="text1">Xu???t x???</p>
                           <p class="text2">China</p>
                        </div>
                        <div class="item">
                           <p class="text1">Ch??? ????? b???o h??nh</p>
                           <p class="text2">B???o h??nh qu???c t??? <b>10</b> n??m</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
</div>
<div id="block-ud2glzu2WR1" class="pdp-block fixed-width-full  block-margin-top background-2">
   <div id="module_product_review" class="pdp-block module">
      <div class="pdp-mod-review">
         <div>
            <div class="mod-title">
               <h2 class="pdp-mod-section-title outer-title">????nh gi?? v?? nh???n x??t c???a {{ $product->pro_name}}</h2>
            </div> 
            <div class="mod-rating">
               <div class="content">
                  <div class="left">
                     <div class="summary">
                        <div class="score"><span class="score-average">{{round($product->star,2)}}</span><span class="score-max">/5</span></div>
                        <div class="average">
                           <div class="container-star " style="width: 166.25px; height: 33.25px;">
                              @if($product->star==0)
                              <img class="star" src="//laz-img-cdn.alicdn.com/tfs/TB18ZvEgfDH8KJjy1XcXXcpdXXa-64-64.png" style="width: 33.25px; height: 33.25px;">
                              <img class="star" src="//laz-img-cdn.alicdn.com/tfs/TB18ZvEgfDH8KJjy1XcXXcpdXXa-64-64.png" style="width: 33.25px; height: 33.25px;">
                              <img class="star" src="//laz-img-cdn.alicdn.com/tfs/TB18ZvEgfDH8KJjy1XcXXcpdXXa-64-64.png" style="width: 33.25px; height: 33.25px;">
                              <img class="star" src="//laz-img-cdn.alicdn.com/tfs/TB18ZvEgfDH8KJjy1XcXXcpdXXa-64-64.png" style="width: 33.25px; height: 33.25px;">
                              <img class="star" src="//laz-img-cdn.alicdn.com/tfs/TB18ZvEgfDH8KJjy1XcXXcpdXXa-64-64.png" style="width: 33.25px; height: 33.25px;">
                              @else
                              @for($i=1;$i<= $product->star;$i++) 
                                 <img class="star" src="//laz-img-cdn.alicdn.com/tfs/TB19ZvEgfDH8KJjy1XcXXcpdXXa-64-64.png" style="width: 33.25px; height: 33.25px;">
                              @endfor

                              @if( $product->star < 5) 
                                 @for($i=$product->star+ 1;$i<=5;$i++) 
                                    <img class="star" src="//laz-img-cdn.alicdn.com/tfs/TB18ZvEgfDH8KJjy1XcXXcpdXXa-64-64.png" style="width: 33.25px; height: 33.25px;">
                                  @endfor
                                 @endif
                              @endif
                           </div>
                        </div>
                        <div class="count"> {{$product->star}} ????nh gi??</div>
                     </div>
                     @foreach($ratingDefault as $key =>$item)
                     @php
                     $ageItem=0;
                     if($product->star >0)
                     $ageItem = round(($item['count_number'] / $product->star) *100,2);
                     @endphp
                     <div class="detail">
                        <ul>
                           <li>
                              <div class="container-star progress-title" style="width: 79.8px; height: 15.96px;">
                                 @for($i =1;$i<=$key;$i++) 
                                    <img class="star" src="//laz-img-cdn.alicdn.com/tfs/TB19ZvEgfDH8KJjy1XcXXcpdXXa-64-64.png">
                                 @endfor
                                 @for($j=5;$j>$key;$j--)
                                    <img class="star" src="//laz-img-cdn.alicdn.com/tfs/TB18ZvEgfDH8KJjy1XcXXcpdXXa-64-64.png">
                                 @endfor
                              </div>
                              <span class="progress-wrap">
                                 <div class="pdp-review-progress">
                                    <div class="bar bg"></div>
                                    <div class="bar fg" style="width: {{ $ageItem}}%"></div>
                                 </div>
                              </span>
                              <span class="percent"> {{ $item['count_number'] }}</span>
                           </li>
                        </ul>
                     </div>
                     @endforeach
                  </div>
               </div>
            </div>
         </div>
         <div>
            <div class="pdp-mod-filterSort">
               <span class="title">Nh???n x??t v??? s???n ph???m</span>
               <div class="oper">
                  <span>L???c:</span>
                  @php
                  $number='T???t c???';
                  for($i=5;$i>=1;$i--)
                  if(Request::get('s') == $i){
                  $number =$i;
                  break;
                  }
                  @endphp
                  <span class="condition">{{ $number}} Sao</span>
                  <div class="next-menu next-overlay-inner expandInDown ">
                     <ul class="next-menu-content" style="color: black;">
                        <li class="{{ Request::get('s') ==6 ?'active' : '' }}"><a href="{{ route('get.product.detail',$product->pro_slug.'-'.$product->id )}}">T???t c??? Sao</a></li>
                        @for($i=5;$i>=1;$i--)
                        <li class="{{ Request::get('s') == $i ?'active' : '' }}"><a href="{{ request()->fullUrlWithQuery(['s'=>$i]) }}">{{$i}} Sao</a></li>
                        @endfor
                     </ul>
                  </div>
               </div>
               <div class="oper"><span class="lazada lazada-is-sort lazada-icon oper-icon"></span><span>S???p x???p:</span><span class="condition">Li??n quan</span></div>
            </div>
         </div>
         <div>
            <div class="review_list">
               @foreach($ratings as $value =>$item)
               @include('layout.pages.product_detail.ratings',['rating'=>$item])
               @endforeach
               <div class="pagination-link">
                  {!! $ratings->appends($query ?? [])->links() !!}
               </div>
            </div>

            <div id="block-review">
               <form action="{{ route('ajax_post.user.rating.add') }}" class="form-question" method="post">
                  @csrf
                  <div class="item">
                     <br><br>
                     @if(isset(\Auth::user()->id))
                     <div id="module_product_qna" class="pdp-block module">
                        <div class="mod-title">
                           <div class="pdp-mod-section-title outer-title">Ph???n h???i c???a b???n v??? s???n ph???m n??y</div>
                           <br><br>
                           <div class="top">
                              <div class="container-star starCtn left" id="ratings" style="width: 223.125px; height: 16.625px;">
                                 @for ($i=1;$i<=5;$i++) <i class="fa fa-star opacity cursor" style="zoom:2" data-i={{$i}}></i>
                                    @endfor
                                    <span id="review_text"></span>
                                    <input type="hidden" id="review_value" name="review" value="5">
                                    <input type="hidden" id="product_id" name="product_id" value="{{ $product->id }}">
                              </div>
                           </div>
                           <div class="pdp-mod-qna">
                              <div class="qna-ask-box-container">
                                 <div class="qna-ask-box folded">
                                    <span class="next-input next-input-single next-input-medium qna-ask-input"><input type="text" placeholder="Vi???t c??u h???i c???a b???n ??? ????y" value="" name="content" maxlength="300" height="100%"></span>
                                    <button type="submit" class=" cursor next-btn next-btn-primary next-btn-medium qna-ask-btn js-process-view"> ?????T C??U H???I</button>
                                 </div>
                              </div>
               </form>
            </div>
            @if(!$rating)
            <div>
               <span class="lazada lazada-noReview lazada-icon qna-empty-icon"></span>
               <div class="qna-empty-text">Ch??a c?? c??u h???i cho s???n ph???m n??y.</div>
               <div class="qna-empty-text">?????t c??u h???i cho nh?? b??n h??ng v?? c??u tr??? l???i s??? ???????c hi???n th??? t???i ????y</div>
            </div>
         </div>
         @else
         <div class="qna-section-title">C??u h???i c???a t??i </div>
         <ul class="qna-list">
            <div class="review_list_personal"></div>

            @foreach($rating as $value =>$item)
            @include('layout.pages.product_detail.personal_rating',['rating'=>$item])
            @endforeach
            {!! $rating->links() !!}@endif
            <br>
            <br>
            <br>
         </ul>
         @endif
      </div>
   </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="SupInfo">
   <div class="wrp">
      <div class="left">
         <div class="item">
            <p class="head">Hotline</p>
            <a href="tel:18006005" class="tel">
               <span class="icon"><i class="fa fa-phone"></i></span>
               <span class="text">1800.6005</span>
            </a>
         </div>
         <div class="item">
            <p class="head">G???i ?????t h??ng</p>
            <a href="tel:0985681189" class="tel">
               <span class="icon"><i class="fa fa-phone"></i></span>
               <span class="text">098.568.1189</span>
            </a>
         </div>
      </div>
      <div class="right">
         <div class="mail">
            <p class="fs17 ttu mb10">????ng k?? nh???n th??ng tin m???i</p>
            <div id="frmMail">
               <input type="text" value="" placeholder="Nh???p email c???a b???n t???i ????y" />
               <a href="javascript://" class="btnRegis">????ng k??</a>
            </div>
         </div>
         <div class="social">
            <p class="fs17 ttu mb10">K???t n???i m???ng x?? h???i</p>
            <ul>
               <li><a rel="nofollow" href="javascript:;" target="_blank"><i class="fa fa-facebook-f"></i></a></li>
               <li><a rel="nofollow" href="javascript:;" target="_blank"><i class="fa fa-instagram"></i></a></li>
               <li><a rel="nofollow" href="javascript:;" target="_blank"><i class="fa fa-youtube"></i></a></li>
            </ul>
         </div>
      </div>
   </div>
</div>
@include('layout.component.footer')
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
   $(function() {

      $('.js-add-favourite').click(function(event) {
         event.preventDefault();
         let $this = $(this);
         let URL = $this.attr('href');
         if (URL) {
            $.ajax({
               headers: {
                  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
               },
               method: "POST",
               url: URL
            }).done(function(result) {
               if (result.status == 1) {
                  $('.js-add-favourite i').removeClass('fa-heart-o');
                  $('.js-add-favourite i').addClass('fa-heart');
                  $('.js-add-favourite i').addClass('red');
               } else if (result.status == 2) {
                  $('.js-add-favourite i').removeClass('fa-heart');
                  $('.js-add-favourite i').removeClass('red');
                  $('.js-add-favourite i').addClass('fa-heart-o');

               }
               $this.parents('h1').find('.favourite').text(result.count);

            })
         }
      });

      let $item = $("#ratings i");
      let arrTextRating = {
         1: "R???t t???i t???",
         2: "T???i t???",
         3: "T???t",
         4: "Xu???t s???c",
         5: "Tuy???t v???i"
      };
      $item.mouseover(function() {
         let $this = $(this);
         let $i = $this.attr('data-i');
         $("#review_value").val($i);
         $item.removeClass('r-active');
         $item.each(function(key, value) {
            if (key + 1 <= $i) {
               $(this).addClass('r-active');
            }
         })
         $("#review_text").addClass('review_text');
         $("#review_text").text(arrTextRating[$i]);
      });
      $(".js-process-view").click(function(event) {
         event.preventDefault();
         let URL = $(this).parents('form').attr('action');
         $.ajax({
            method: "POST",
            headers: {
               'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            url: URL,
            data: $('.form-question').serialize()
         }).done(function(result) {
            $('.form-question')[0].reset();
            console.log(result.html);
            if (result.html) {
               $(".review_list").prepend(result.html);
               $(".review_list_personal").prepend(result.personal);
            }
            swal(result.messages, "", "success");
         })
      });


      $("body").on('click', '.pagination a', function(event) {
         event.preventDefault();

         $('li').removeClass('active');
         $(this).parent('li').addClass('active');
         let URL = $(this).attr('href');
         var myurl = URL;
         var page = URL.split('page=')[1];

         getRatingList(page);
      });

      function getRatingList(page) {
         $.ajax({
               type: "GET",
               url: '?page=' + page
            })
            .success(function(results) {
               $(".review_list_personal").html(results.html);
            });
      }
   })
</script>