
while(<DATA>){
  chomp;
  while(/^ /){ s/^ //g }
  print $_;
}

__DATA__
<div class="body">
  <h1>刊登共乘</h1>
  <hr>
  <div class="innerBox" id="inner">
    <div class="textInput">
      <div><label class="labelStart"></label><input id="searchStart" type="text" placeholder="請輸入出發地點" autocomplete="off"></div>
      <div><label class="labelEnd"></label><input id="searchEnd" type="text" placeholder="請輸入目標地點" autocomplete="off">  </div>
      <div class="dateMaster">
        <div>
          <label class="stDate"></label><input id="startDate" type="text" placeholder="出發日期" >
        </div>
        <div class="pillRight">
          <label class="stTime"></label><input id="startTime" type="text" placeholder="出發時間" >
        </div>
      </div>
    </div>
      <h4>需求：      </h4>
    <div class="radios">
        <label for="needP"><input type="radio" name="need" id="needP" value="needP" />找乘客</label>
        <label for="needD"><input type="radio" name="need" id="needD" value="needD" />找駕駛</label>
    </div>
    <h4>其他條件</h4>
    <div class="checkBox">
        <input type="checkbox" name="chk" value="禁止飲食" />禁止飲食
        <input type="checkbox" name="chk" value="禁止寵物"/>禁止寵物
        <input type="checkbox" name="chk" value="禁止大型行李"/>禁止大型行李
        <input type="checkbox" name="chk" value="禁止抽菸、喝酒、吃檳榔"/>禁止抽菸、喝酒、吃檳榔
    </div>
    <h4>選擇價格/座位</h4>
    <div class="select">
      <label for="prizeSel"><input type="radio" name="prizeSelN" id="prizeSel" value="0"/>建議價格(元)
      <select id="prizeSelector">
        <option value="20">20 元</option>
        <option value="30">30 元</option>
        <option value="40">40 元</option>
        <option value="50">50 元</option>
        <option value="60">60 元</option>
        <option value="70">70 元</option>
      </select></label>
      <br />
      <label for="prizeEditor"><input type="radio" name="prizeSelN" value="1" id="prizeEditor" />自訂價格(元)</label>
      <input type="text" id="prizeEdit" placeholder="請輸入價錢"></input>
    </div>
    <h4>提供座位數</h4>
    <div class="seatSel">
      <select id="seatSelector">
        <option value="1">1 人</option>
        <option value="2">2 人</option>
        <option value="3">3 人</option>
      </select></label>
    </div>
    <h4>備註</h4>
    <div class="others">
      <textarea name="outherInput" id="textarea1" ></textarea>
    </div>
    <button class="button" onclick="clearList()" >清除重填</button>
    <button class="button" onclick="submit()" >刊登共乘</button><br /><br />
  </div>
</div>