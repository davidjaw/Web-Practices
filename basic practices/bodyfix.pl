
while(<DATA>){
  chomp;
  while(/^ /){ s/^ //g }
  print $_;
}

__DATA__
<div class="body">
  <h1>�Z�n�@��</h1>
  <hr>
  <div class="innerBox" id="inner">
    <div class="textInput">
      <div><label class="labelStart"></label><input id="searchStart" type="text" placeholder="�п�J�X�o�a�I" autocomplete="off"></div>
      <div><label class="labelEnd"></label><input id="searchEnd" type="text" placeholder="�п�J�ؼЦa�I" autocomplete="off">  </div>
      <div class="dateMaster">
        <div>
          <label class="stDate"></label><input id="startDate" type="text" placeholder="�X�o���" >
        </div>
        <div class="pillRight">
          <label class="stTime"></label><input id="startTime" type="text" placeholder="�X�o�ɶ�" >
        </div>
      </div>
    </div>
      <h4>�ݨD�G      </h4>
    <div class="radios">
        <label for="needP"><input type="radio" name="need" id="needP" value="needP" />�䭼��</label>
        <label for="needD"><input type="radio" name="need" id="needD" value="needD" />��r�p</label>
    </div>
    <h4>��L����</h4>
    <div class="checkBox">
        <input type="checkbox" name="chk" value="�T���" />�T���
        <input type="checkbox" name="chk" value="�T���d��"/>�T���d��
        <input type="checkbox" name="chk" value="�T��j�����"/>�T��j�����
        <input type="checkbox" name="chk" value="�T���ҡB�ܰs�B�Y�b�}"/>�T���ҡB�ܰs�B�Y�b�}
    </div>
    <h4>��ܻ���/�y��</h4>
    <div class="select">
      <label for="prizeSel"><input type="radio" name="prizeSelN" id="prizeSel" value="0"/>��ĳ����(��)
      <select id="prizeSelector">
        <option value="20">20 ��</option>
        <option value="30">30 ��</option>
        <option value="40">40 ��</option>
        <option value="50">50 ��</option>
        <option value="60">60 ��</option>
        <option value="70">70 ��</option>
      </select></label>
      <br />
      <label for="prizeEditor"><input type="radio" name="prizeSelN" value="1" id="prizeEditor" />�ۭq����(��)</label>
      <input type="text" id="prizeEdit" placeholder="�п�J����"></input>
    </div>
    <h4>���Ѯy���</h4>
    <div class="seatSel">
      <select id="seatSelector">
        <option value="1">1 �H</option>
        <option value="2">2 �H</option>
        <option value="3">3 �H</option>
      </select></label>
    </div>
    <h4>�Ƶ�</h4>
    <div class="others">
      <textarea name="outherInput" id="textarea1" ></textarea>
    </div>
    <button class="button" onclick="clearList()" >�M������</button>
    <button class="button" onclick="submit()" >�Z�n�@��</button><br /><br />
  </div>
</div>