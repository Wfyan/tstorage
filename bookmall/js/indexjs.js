		var ali = document.getElementsByClassName('carousel_nav')[0].getElementsByTagName('li'),
			carInnerClass = document.getElementsByClassName('carousel_inner')[0],
			acar = document.getElementsByClassName('car_item'),
			pre = document.getElementById('pre'),
			next = document.getElementById('next'),
			aliArray = Array.prototype.slice.call(ali),
			n = 0;
		//设置定时器，调用display函数
		var car = setInterval(display,3000);
		//上一张
		pre.onclick=function(){
			n-=2;
			if(n<0)n=3;
			display();
		}
		//下一张
		next.onclick=function(){
			display();
		}
		//当鼠标悬浮清除定时器
		carInnerClass.onmouseover=function(){
			clearInterval(car);
		}
		//鼠标移开重新设置定时器
		carInnerClass.onmouseout=function(){
			car = setInterval(display,3000);
		}
		//轮播导航，鼠标悬浮li，播放相应图片
		for(var i=0;i<ali.length;i++){
			ali[i].onmouseover=function(){
				for(var i=0;i<ali.length;i++){
					ali[i].className='';
					acar[i].className='car_item';
				}
				this.className='li_active';
				n = aliArray.indexOf(this);
				carInnerClass.style.marginLeft='-'+(n*1200)+'px';
				acar[n].className='car_item car_active';
			}
		}
		//轮播函数
		function display(){
			carInnerClass.style.marginLeft='-'+(n*1200)+'px';
			for(var i=0;i<ali.length;i++){
				ali[i].className='';
				acar[i].className='car_item';
			}
			ali[n].className='li_active';
			acar[n].className='car_item car_active';
			n++;
			if (n>3) {n=0;}
		}

		function block(a,n){ 
			document.getElementsByClassName(a)[0].style.display='block';
		}

		function tabShow(o){
			var ali = o.parentNode.getElementsByTagName('li');
			for(var i=0;i<ali.length;i++){
				ali[i].className='';
			}
			o.className='active';
		}

		function changeShowCon(n,m){
			var acon = document.getElementById('con'+n).getElementsByClassName('content');
			for(var i=0;i<acon.length;i++){
				acon[i].style.display='none';
			}
			acon[m].style.display='block';
		}