(function(){if(!Array.prototype.indexOf)Array.prototype.indexOf=function(elt){var len=this.length>>>0;var from=Number(arguments[1])||0;from=from<0?Math.ceil(from):Math.floor(from);if(from<0)from+=len;for(;from<len;from++)if(from in this&&this[from]===elt)return from;return-1};function setCookie(cname,cvalue,exdays){var d=new Date;d.setTime(d.getTime()+exdays*24*60*60*1E3);var expires="expires="+d.toGMTString();document.cookie=cname+"="+cvalue+";path=/; "+expires}function getCookie(cname){var name=
cname+"=";var ca=document.cookie.indexOf(";")>0?document.cookie.split(";"):new Array(document.cookie);for(var i=0;i<ca.length;i++){var c=ca[i];while(c.charAt(0)==" ")c=c.substring(1);if(c.indexOf(name)==0)return c.substring(name.length,c.length)}return""}function handleCookie(cname,cval){var oldVal=getCookie(cname);if(oldVal!==""&&oldVal.length!=0){var oldValArr=oldVal.indexOf("|")>0?oldVal.split("|"):new Array(oldVal);if(oldValArr.indexOf(cval.toString())<0){oldValArr.push(cval);if(oldValArr.length>
6)oldValArr.shift();if(oldValArr.length>1)setCookie(cname,oldValArr.join("|"),7)}}else if(cval!=""&&cval!=null)setCookie(cname,cval,7)}jQuery(document).ready(function(){var nid=Drupal.settings.nid;handleCookie("rv_prods",nid)})})();
(function($,Drupal,window,document,undefined){if(navigator.userAgent.toLowerCase().indexOf("firefox")>-1){document._oldGetElementById=document.getElementById;document.getElementById=function(id){if(id===undefined||id===null||id==="")return undefined;return document._oldGetElementById(id)}}})(jQuery,Drupal,this,this.document);function createslider($){var owl=$(".recentviewprod");owl.owlCarousel({itemsCustom:[[0,1],[450,2],[768,3]],navigation:true})}
(function($,Drupal,window,document,undefined){$(document).ready(function(){var owl=$(".mightlikeprod");owl.owlCarousel({itemsCustom:[[0,1],[450,2],[768,3]],navigation:true});var baseUrl=Drupal.settings.baseurl;$(".delivery,input#edit-submit").wrapAll("<div class='cartbtn-wrap'></div>");$("#weight_attribute .first").addClass("active");$("#weight_attribute li").on("click",function(){$(".ajax-progress-throbber").show("fast");$("#weight_attribute li").removeClass("active");$(this).addClass("active");
var formdata={weightId:this.id,nid:$('input[name="nid"]').val()};$.ajax({url:baseUrl+"/header/bakingo-header",type:"POST",dataType:"json",data:formdata,success:function(result){var res=result.response.data;$(".ajax-progress-throbber").hide("fast");$(".commerce-product-field-commerce-price .field-item").html(res.amount);$('input[name="product_id"]').val(res.productid);if(res.discount_percentage>0){$(".discount-main").html('<div class = "discounted-price">('+res.discount_percentage+"%OFF)</div>");$(".pd-orgp .field-item.even").html(res.list_price)}else{$(".discount-main").html("");
$(".pd-orgp .field-item.even").html("")}}})});$('select[name ="attributes[field_weight]"]').on("change",function(){$(".ajax-progress-throbber").show("fast");var formdata={weightId:this.value,nid:$('input[name="nid"]').val()};$.ajax({url:baseUrl+"/header/bakingo-header",type:"POST",dataType:"json",data:formdata,success:function(result){var res=result.response.data;$(".ajax-progress-throbber").hide("fast");$(".commerce-product-field-commerce-price .field-item").html(res.amount);$('input[name="product_id"]').val(res.productid);
if(res.discount_percentage>0){$(".discount-main").html('<div class = "discounted-price">'+res.discount_percentage+"%<span>OFF</span></div>");$(".pd-orgp .field-item.even").html(res.list_price)}else{$(".discount-main").html("");$(".pd-orgp .field-item.even").html("")}}})})})})(jQuery,Drupal,this,this.document);
(function($,Drupal,window,document,undefined){Drupal.behaviors.my_product_page_behavior={attach:function(context,settings){jQuery(".reviews-scroll").click(function(){jQuery("html, body").animate({scrollTop:$("#scroll-review").offset().top},1E3)});if(jQuery(".image-widget-data .form-file").val()=="")jQuery('.image-widget-data input[type="submit"]').hide();jQuery('input[type="file"]').change(function(e){var fileName=e.target.files[0].name;if(fileName){var fileSize=e.target.files[0].size;if(fileSize>=
5E6)$.fn.imagesizeValidation();else jQuery("input.form-file").parent().find('input[type="submit"]').mousedown()}var preview=jQuery(".image-preview img").attr("src");if(typeof preview==="undefined"&&e.target.files[0].size<=5E6){jQuery(".form-type-managed-file label").hide();jQuery(".form-type-managed-file").once().prepend('<span class ="proc-msg">Uploading Image ....</span>')}document.getElementById("chose_pty").innerHTML=fileName});var imagePreview=jQuery(".image-preview img").attr("src");if(typeof imagePreview===
"undefined"){var photocakeMsg="<span class='imghelptext'>Upload image for this Photo Cake</span>";jQuery(".form-type-managed-file label").once().before(photocakeMsg)}else jQuery(".messages.error").hide();jQuery(".form-item-line-item-fields-field-message-und-0-value input").attr("placeholder","Enter your message");jQuery(".node-type-photo-cake .form-item-line-item-fields-field-message-und-0-value input").attr("placeholder","Enter name here");jQuery(".form-item-line-item-fields-field-message-und-0-value input").attr("autocomplete",
"off");var charleft="<div id='charNum'>30 characters left</div>";var messagefield=jQuery(".form-item-line-item-fields-field-message-und-0-value input");messagefield.once().after(charleft);messagefield.attr({maxLength:30});jQuery(".form-item-line-item-fields-field-message-und-0-value input").keyup(function(){var max=30;var len=jQuery(this).val().length;if(len>=max)jQuery("#charNum").text("you have reached the limit");else{var char=max-len;jQuery("#charNum").text(char+" characters left")}});var flavourMsg=
"<span class='flavour error col-md-4' style='display:none;'>Please Select Flavour.</span>";var flavour=jQuery(".form-item-line-item-fields-field-pcake-flavour-und");flavour.once().after(flavourMsg);var imgUploadMsg="<span class='imageupload error col-md-4' style='display:none;'>Please upload image.</span>";var imgUpload=jQuery(".field-widget-image-image .image-widget-data");imgUpload.once().after(imgUploadMsg);jQuery("#edit-line-item-fields-field-image-und-0-upload-button").hide();var addStyle={"border":"1px solid #e9322d",
"box-shadow":"0 0 6px #f8b9b7"};var shadowNone={"border":"1px solid #e2e2e2","box-shadow":"none"};jQuery(".field-type-commerce-product-reference input[id*='edit-submit']").unbind().click(function(){var flavourVal=jQuery(".form-item-line-item-fields-field-pcake-flavour-und .form-select").val();if(flavourVal=="_none"){jQuery(".flavour").show();jQuery(".form-item-line-item-fields-field-pcake-flavour-und .chosen-container-single").css(addStyle);jQuery("html, body").animate({scrollTop:$(".commerce-add-to-cart").offset().top},
1E3);return false}else if(jQuery(".image-widget-data .form-file").val()==""){jQuery(".flavour").hide();jQuery(".form-item-line-item-fields-field-pcake-flavour-und .chosen-container-single").css(shadowNone);jQuery(".imageupload").show();jQuery(".image-widget-data .form-file").css(addStyle);jQuery("html, body").animate({scrollTop:$(".commerce-add-to-cart").offset().top},1E3);return false}else if(jQuery(".image-widget-data .form-file").val()!==""&&jQuery(".image-widget-data .form-file").val()!==undefined){var fileSize=
jQuery(".image-widget input[type='file']")[0].files[0].size;if(fileSize>=5E6){$.fn.imagesizeValidation();return false}}else jQuery(".ajax-progress-throbber").show("fast")});$.fn.imagesizeValidation=function(){jQuery(".imageupload").text("max 5mb image can be uploaded");jQuery(".imageupload").show();jQuery(".image-widget-data .form-file").css(addStyle)}}}})(jQuery,Drupal,this,this.document);;/**/