use v5.18.2;
my @files = glob '*.html';
my @replace;
while(<DATA>){
  chomp;
  push @replace, $_;
}
for my $FN (@files){
  my @content;
  open R, $FN;
  open BK, ">backup/$FN";
  my $trigger = 0;
  while(<R>){
    if( m'<header' ){
      push @content, @replace;
      $trigger++;
    } elsif ( m'</header' ){
      $trigger = 0;
      next;
    }
    next if $trigger > 0;
    chomp;
    say BK $_;
    push @content, $_ unless m'<header';
  }
  open W, ">$FN";
  say W $_ for @content;
  close(R);
  close(BK);
  close(W);
}

__DATA__
<header class="header">
  <div class="container">
    <ul class="nav myFont">
      <li class="hidHost"><a href="javascript:void(0)">主頁面</a>
        <ul class="hidNav">
          <li><a href="index.html">首頁</a></li>
        </ul>
      </li>
      <li class="hidHost"><a href="javascript:void(0)">Javascript Practices</a>
        <ul class="hidNav">
          <div class="hidNavLeftImg"><img src="img/jsLeftImg.png"></img></div>
          <div class="pillLeft">
            <li><a href="BMIcont.html">BMI檢測</a></li>
            <li><a href="javascript:void(0)">None</a></li>
            <li><a href="javascript:void(0)">None</a></li>
          </div>
        </ul>
      </li>
      <li class="hidHost"><a href="javascript:void(0)">CSS Practices</a>
        <ul class="hidNav">
          <div class="hidNavLeftImg"><img src="img/cssLeftImg.png"></img></div>
          <div class="pillLeft">
            <li><a href="javascript:void(0)">CSS範例( none )</a></li>
            <li><a href="javascript:void(0)">None</a></li>
            <li><a href="javascript:void(0)">None</a></li>
          </div>
        </ul>
      </li>
      <li class="hidHost"><a href="javascript:void(0)">Jquery插件練習</a>
        <ul class="hidNav">
          <div class="hidNavLeftImg"><img src="img/ratyLeftImg.png"></img></div>
          <div class="pillLeft">
            <li><a href="raty.html">--Raty--</a></li>
            <li><a href="selector.html">--Selector--</a></li>
            <li><a href="javascript:void(0)">None</a></li>
          </div>
        </ul>
      </li>
    </ul>
  </div>
<br />
</header>