# Belajar.id.com
<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Belajar.Id</title>
<link rel="icon" href="data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22>🎓</text></svg>">
<style>
:root{--bg1:#eef2ff;--bg2:#fdf2f8;--fg:#1b1d29;--card:#fff;--mut:#6b7080;--ac:#6366f1;--bd:#e3e5ee;color-scheme:light}
@media(prefers-color-scheme:dark){:root:not([data-theme="light"]){--bg1:#0f1020;--bg2:#1a1030;--fg:#eef0f8;--card:#1d2030;--mut:#9aa0b5;--bd:#2d3146;--ac:#818cf8;color-scheme:dark}}
:root[data-theme="dark"]{--bg1:#0f1020;--bg2:#1a1030;--fg:#eef0f8;--card:#1d2030;--mut:#9aa0b5;--bd:#2d3146;--ac:#818cf8;color-scheme:dark}
*{box-sizing:border-box}
body{margin:0;background:linear-gradient(160deg,var(--bg1),var(--bg2)) fixed;color:var(--fg);font-family:system-ui,-apple-system,"Segoe UI",Roboto,sans-serif;min-height:100vh;overflow-x:hidden}
#app{max-width:760px;margin:0 auto;padding:16px;position:relative;z-index:1}
button{font-family:inherit}
@keyframes up{from{opacity:0;transform:translateY(16px)}to{opacity:1;transform:none}}
@keyframes pop{40%{transform:scale(1.08)}}
@keyframes shake{25%{transform:translateX(-9px)}75%{transform:translateX(9px)}}
@keyframes flt{50%{transform:translateY(-10px)}}
@keyframes spin{to{transform:rotate(360deg)}}
@keyframes bounce{50%{transform:translateY(-16px) rotate(-6deg)}}
@keyframes fill{from{width:0}to{width:100%}}
@keyframes drift{from{transform:translateY(105vh) rotate(0)}to{transform:translateY(-15vh) rotate(30deg)}}
@keyframes fall{to{transform:translateY(112vh) rotate(540deg)}}
@keyframes pulse{50%{transform:scale(1.06)}}
#app.nw>*{animation:up .4s both}
.bgf span{position:fixed;top:0;left:var(--x);font-size:28px;opacity:.16;animation:drift var(--t) linear infinite;animation-delay:var(--d);pointer-events:none;z-index:0}
#ld{position:fixed;inset:0;z-index:99;display:grid;place-content:center;justify-items:center;gap:14px;text-align:center;background:linear-gradient(160deg,#6366f1,#ec4899);color:#fff;transition:opacity .5s}
#ld .lg{animation:bounce 1s infinite}#ld h1{margin:0;font-size:34px}
.lbar{width:210px;height:9px;border-radius:9px;background:rgba(255,255,255,.3);overflow:hidden}
.lbar i{display:block;height:100%;background:#fff;animation:fill 1.6s ease-out forwards}
.ldr{position:fixed;inset:0;z-index:50;display:grid;place-content:center;justify-items:center;gap:14px;background:rgba(79,70,229,.93);color:#fff;font-size:18px;font-weight:700;animation:up .2s}
.sp{width:48px;height:48px;border:5px solid rgba(255,255,255,.35);border-top-color:#fff;border-radius:50%;animation:spin .8s linear infinite}
#ts{position:fixed;top:12px;left:0;right:0;display:flex;flex-direction:column;align-items:center;gap:8px;z-index:100;pointer-events:none}
.toast{background:#111827;color:#fff;padding:10px 16px;border-radius:99px;font-weight:700;font-size:14px;animation:up .3s;box-shadow:0 6px 20px rgba(0,0,0,.3)}
.hd{display:flex;align-items:center;gap:10px;margin-bottom:8px}
.hd h1{margin:0;font-size:26px;flex:1;background:linear-gradient(90deg,#6366f1,#ec4899);-webkit-background-clip:text;background-clip:text;color:transparent}
.hd svg{animation:flt 3s ease-in-out infinite}
.ib{width:42px;height:42px;border-radius:12px;border:2px solid var(--bd);background:var(--card);font-size:20px;cursor:pointer}
.ib:active{transform:scale(.9)}
.pf{display:flex;align-items:center;gap:12px;background:var(--card);border:2px solid var(--bd);border-radius:20px;padding:12px;margin-bottom:10px}
.av{width:58px;height:58px;border-radius:50%;border:0;font-size:30px;cursor:pointer;background:linear-gradient(135deg,#6366f1,#ec4899);box-shadow:0 4px 12px rgba(99,102,241,.4);flex:none}
.av:active{transform:rotate(20deg) scale(.9)}
.pi{flex:1;min-width:0}.pn{display:flex;align-items:center;gap:6px;font-weight:800;font-size:18px}
.pn span{overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.pn input{padding:6px 10px;font-size:16px;border-radius:10px}
.pe{border:0;background:var(--bd);color:var(--fg);border-radius:9px;width:32px;height:32px;cursor:pointer;font-size:15px;flex:none}
.ps{font-size:13px;color:var(--mut);font-weight:600;margin:2px 0 4px;cursor:pointer}
input{width:100%;padding:13px 14px;font-size:16px;border:2px solid var(--bd);border-radius:12px;background:var(--card);color:var(--fg);outline:none}
input:focus{border-color:var(--ac)}input[type=range]{padding:0;border:0}
.modes{display:flex;gap:8px;margin:10px 0;flex-wrap:wrap}
.chip{padding:10px 14px;border-radius:999px;border:2px solid var(--bd);background:var(--card);color:var(--fg);font-size:14px;font-weight:600;cursor:pointer}
.chip.on{background:var(--ac);border-color:var(--ac);color:#fff}.chip:disabled{opacity:.4;cursor:default}
.grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(155px,1fr));gap:12px}
.card{position:relative;display:flex;flex-direction:column;gap:3px;text-align:left;padding:14px;border-radius:20px;border:0;background:linear-gradient(145deg,var(--g1),var(--g2));color:#fff;cursor:pointer;box-shadow:0 6px 16px rgba(0,0,0,.15);transition:transform .15s;animation:up .5s both;animation-delay:calc(var(--i)*60ms)}
.card:hover{transform:translateY(-4px) rotate(-1deg)}.card:active{transform:scale(.95)}
.card .em{display:grid;place-items:center;width:54px;height:54px;border-radius:16px;background:rgba(255,255,255,.22);font-size:32px;margin-bottom:4px}
.card:hover .em{animation:bounce .6s}
.card b{font-size:16px}.card small{font-weight:700}.card i{font-style:normal;font-size:12px;opacity:.9}
.card .hs{position:absolute;top:10px;right:12px;font-size:12px;font-weight:700}
.sh{margin:26px 0 8px;font-size:20px}.sh small{display:block;color:var(--mut);font-size:13px;font-weight:500}
.ml{display:grid;gap:10px}
.mi{display:flex;align-items:center;gap:12px;text-align:left;padding:12px;border-radius:18px;border:2px solid var(--bd);background:var(--card);color:var(--fg);cursor:pointer;animation:up .5s both;animation-delay:calc(var(--i)*50ms)}
.mi:active{transform:scale(.98)}
.mi>span{font-size:30px;width:52px;height:52px;display:grid;place-items:center;border-radius:14px;background:linear-gradient(145deg,var(--g1),var(--g2));flex:none}
.mi div{flex:1;min-width:0}.mi b{display:block}.mi small{color:var(--mut)}.mi em{font-style:normal;font-size:20px}
.top{display:flex;justify-content:space-between;align-items:center;gap:8px;margin-bottom:10px;font-weight:700;font-size:14px}
.back{background:var(--card);color:var(--fg);border:2px solid var(--bd);border-radius:10px;padding:8px 12px;cursor:pointer}
.board{display:flex;gap:8px;margin-bottom:10px}
.pl{flex:1;padding:8px;border-radius:14px;background:var(--card);border:2px solid var(--bd);text-align:center;font-size:12px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}
.pl b{display:block;font-size:22px;color:var(--c)}.pl.act{border-color:var(--c);animation:pulse 1.4s infinite}
.turn{font-weight:700;margin:6px 0}
.tbar{height:10px;border-radius:9px;background:var(--bd);overflow:hidden;margin:8px 0}
.tbar i{display:block;height:100%;width:100%;background:linear-gradient(90deg,#ef4444,#eab308,#22c55e);transition:width .1s linear}
.tbar i.xp{background:var(--ac);transition:width 1s}
.q{background:var(--card);border:2px solid var(--bd);border-radius:18px;padding:20px 16px;font-size:21px;font-weight:700;text-align:center;margin:8px 0 12px;line-height:1.4}
.q.pop{animation:pop .5s}.q.shake{animation:shake .4s}
#fb{min-height:28px;text-align:center;font-weight:700;margin-bottom:6px}
.opt{display:block;width:100%;margin:8px 0;padding:14px;font-size:17px;font-weight:600;border-radius:14px;border:2px solid var(--bd);background:var(--card);color:var(--fg);cursor:pointer}
.opt:active{transform:scale(.97)}
.opt.ok{background:#22c55e;border-color:#22c55e;color:#fff}.opt.no{background:#ef4444;border-color:#ef4444;color:#fff}
.og{display:grid;grid-template-columns:1fr 1fr;gap:10px}.opt.big{font-size:46px;padding:18px;margin:0}
.sl{animation:up .35s both}
.sg{display:flex;flex-wrap:wrap;gap:6px;min-height:42px;margin-bottom:8px}
.pill{background:var(--ac);color:#fff;border-radius:99px;padding:6px 14px;font-weight:800;font-size:16px;text-transform:uppercase;animation:pop .3s}
.row{display:flex;gap:8px}.go{padding:0 22px;border:0;border-radius:12px;background:var(--ac);color:#fff;font-weight:700;font-size:16px;cursor:pointer}
.bls{display:grid;grid-template-columns:1fr 1fr;gap:14px;padding:6px}
.bln{height:112px;border-radius:50% 50% 47% 47%;border:0;font-size:26px;font-weight:800;color:#fff;background:var(--b);cursor:pointer;box-shadow:inset -9px -9px 0 rgba(0,0,0,.14);animation:flt 2.4s ease-in-out infinite;animation-delay:var(--d)}
.bln.ok{outline:5px solid #22c55e}.bln.no{opacity:.3}
.kb{display:flex;flex-wrap:wrap;gap:6px;justify-content:center}
.tl{width:50px;height:54px;border-radius:12px;border:2px solid var(--bd);background:var(--card);color:var(--fg);font-size:22px;font-weight:800;cursor:pointer;text-transform:uppercase}
.tl.sm{width:38px;height:42px;font-size:16px}.tl:disabled{opacity:.25;cursor:default}
.hw{font-size:32px;letter-spacing:5px;font-weight:800;text-align:center;text-transform:uppercase;margin:6px 0}
.bt{display:flex;gap:6px;justify-content:center}
.bb{flex:1;max-width:70px;padding:10px 0;border-radius:14px;border:2px solid var(--bd);background:var(--card);color:var(--fg);cursor:pointer;font-size:26px;transition:.2s}
.bb small{display:block;font-size:13px;font-weight:800}
.bb.on{background:#fef08a;border-color:#facc15;box-shadow:0 0 16px #facc15;color:#000}
.pads{display:grid;grid-template-columns:1fr 1fr;gap:12px}
.pad{height:110px;border:0;border-radius:20px;background:var(--p);opacity:.4;transition:.12s;cursor:pointer}
.pad.lit{opacity:1;transform:scale(1.06);box-shadow:0 0 24px var(--p)}
.mg{display:grid;grid-template-columns:repeat(3,1fr);gap:8px}
.mc{min-height:80px;padding:6px;border-radius:14px;border:2px solid var(--bd);background:var(--card);color:var(--fg);font-size:13px;font-weight:700;cursor:pointer}
.mc.op{border-color:var(--ac);animation:pop .3s}.mc.dn{background:#22c55e;border-color:#22c55e;color:#fff;animation:pop .4s}
/* guru */
.dots{display:flex;gap:6px;margin:6px 0}.dots i{flex:1;height:8px;border-radius:9px;background:var(--bd);transition:.3s}.dots i.on{background:var(--ac)}
.tch{display:flex;gap:10px;align-items:flex-start;margin:12px 0}
.tav{font-size:44px;width:72px;height:72px;border-radius:50%;background:var(--card);border:3px solid var(--ac);display:grid;place-items:center;flex:none;animation:flt 3s ease-in-out infinite}
.tav.talk{animation:bounce .35s infinite}
.bub{flex:1;background:var(--card);border:2px solid var(--ac);border-radius:6px 18px 18px 18px;padding:12px 14px;min-height:100px}
.bub b{color:var(--ac);font-size:13px}.bub p{margin:6px 0 0;font-size:17px;line-height:1.55;white-space:pre-line}
.res{text-align:center;padding-top:20px}.res h2{font-size:28px}.res .big{font-size:64px;animation:bounce 1.2s infinite}
.rk{background:var(--card);border:2px solid var(--bd);border-radius:12px;padding:10px;margin:6px 0;display:flex;justify-content:space-between;font-weight:700;text-align:left}
.rk.me{border-color:var(--ac)}.res .chip{margin:6px}
.md{position:fixed;inset:0;background:rgba(0,0,0,.55);display:grid;place-items:center;padding:14px;z-index:9;animation:up .2s}
.mb{position:relative;background:var(--bg1);color:var(--fg);width:100%;max-width:480px;max-height:90vh;overflow:auto;border-radius:20px;padding:18px;border:2px solid var(--bd)}
.mb h2{margin:0 0 8px}.x{position:absolute;top:10px;right:10px;width:36px;height:36px;border-radius:10px;border:0;background:var(--card);color:var(--fg);font-size:16px;cursor:pointer}
.lb{font-weight:800;margin:14px 0 4px;color:var(--ac)}.lgc{text-align:center}
.st{display:flex;justify-content:space-between;align-items:center;padding:8px 0;font-weight:600}
.sw{width:48px;height:28px;border-radius:99px;border:0;background:var(--bd);position:relative;cursor:pointer}
.sw:after{content:'';position:absolute;top:3px;left:3px;width:22px;height:22px;border-radius:50%;background:#fff;transition:.2s}
.sw.on{background:var(--ac)}.sw.on:after{left:23px}
.shp{display:grid;grid-template-columns:1fr 1fr;gap:10px}
.it{text-align:center;padding:12px;border-radius:16px;border:2px solid var(--bd);background:var(--card)}.it.cur{border-color:var(--ac)}
.bdg{display:flex;align-items:center;gap:10px;padding:10px;border-radius:14px;border:2px solid var(--bd);background:var(--card);margin:6px 0}
.bdg span{font-size:30px}.bdg small{display:block;color:var(--mut)}.bdg.lk{filter:grayscale(1);opacity:.5}
.cf{position:fixed;top:-30px;font-size:26px;animation:fall 2.6s linear forwards;pointer-events:none;z-index:10}
footer{text-align:center;color:var(--mut);font-size:12px;margin:22px 0 8px}
@media(prefers-reduced-motion:reduce){*{animation:none!important}}
</style>
</head>
<body>
<div class="bgf"><span style="--x:8%;--t:19s;--d:0s">✏️</span><span style="--x:28%;--t:24s;--d:-8s">📚</span><span style="--x:50%;--t:21s;--d:-3s">🔬</span><span style="--x:70%;--t:26s;--d:-12s">🎨</span><span style="--x:88%;--t:20s;--d:-6s">🧮</span></div>
<div id="ts"></div>
<div id="ld"><div class="lg"></div><h1>Belajar.Id</h1><div class="lbar"><i></i></div><small>Memuat pelajaran…</small></div>
<div id="app"></div>
<script>
const $=s=>document.querySelector(s),A=$('#app');
const sh=a=>[...a].sort(()=>Math.random()-.5),R=(a,b)=>a+Math.floor(Math.random()*(b-a+1));
const esc=s=>String(s).replace(/[&<>"]/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;'}[c]));
const PC=['#ef4444','#3b82f6','#22c55e','#f59e0b'];
const AV=[['😎',0],['🦊',0],['🐼',0],['🎓',0],['🦁',40],['🚀',60],['🐲',100],['🤖',120],['🦄',150],['👑',250]];
let M=1,S=null,lock=false,Q='',tm=null,tw=null,LS=null;

/* ===== DATA TERSIMPAN ===== */
let C={sfx:1,mus:1,vol:.6,timer:1,lvl:1,theme:'auto',track:0,league:1,names:['','Pemain 2','Pemain 3','Pemain 4']};
let P={xp:0,hs:{},name:'dwiagusrevaldi',av:0,co:0,tc:0,sk:0,ld:'',own:[0,1,2,3],dl:{},dm:null,bd:[],stt:{g:0,l:0,b:0}};
try{Object.assign(C,JSON.parse(localStorage.getItem('bi_c')||'{}'));Object.assign(P,JSON.parse(localStorage.getItem('bi_p')||'{}'))}catch(e){}
if(!P.own.includes(P.av))P.av=0;
const save=()=>{try{localStorage.setItem('bi_c',JSON.stringify(C));localStorage.setItem('bi_p',JSON.stringify(P))}catch(e){}};
const theme=()=>{document.documentElement.dataset.theme=C.theme=='auto'?'':C.theme};theme();
const nm=i=>esc(i==0?P.name:(C.names[i]||'Pemain '+(i+1)));
const TS=[25,15,8];
const addCo=n=>{P.co+=n;P.tc+=n};
function toast(m){const t=document.createElement('div');t.className='toast';t.textContent=m;$('#ts').appendChild(t);setTimeout(()=>{t.style.transition='.4s';t.style.opacity=0;setTimeout(()=>t.remove(),400)},3000)}

/* ===== SUARA & MUSIK ===== */
let AC,mt=null,mi=0;
const fq=m=>440*Math.pow(2,(m-69)/12);
function au(){if(!AC){try{AC=new(window.AudioContext||window.webkitAudioContext)()}catch(e){}}if(AC&&AC.state=='suspended')AC.resume();return AC}
function tone(f,d,ty,v,t0){const a=au();if(!a)return;const o=a.createOscillator(),g=a.createGain(),t=a.currentTime+(t0||0);
 o.type=ty;o.frequency.value=f;g.gain.setValueAtTime(Math.max(.0001,v*C.vol),t);g.gain.exponentialRampToValueAtTime(.0001,t+d);
 o.connect(g);g.connect(a.destination);o.start(t);o.stop(t+d)}
const SFX={
 ok:()=>[72,76,79,84].forEach((n,i)=>tone(fq(n),.2,'triangle',.4,i*.07)),
 no:()=>{tone(160,.3,'sawtooth',.25);tone(110,.4,'sawtooth',.25,.12)},
 tap:()=>tone(660,.07,'square',.14),
 win:()=>[60,64,67,72,67,72,76,79].forEach((n,i)=>tone(fq(n),.28,'triangle',.4,i*.12))};
const S$=k=>{if(C.sfx)SFX[k]()};
const TR=[
 {ms:190,l:[72,0,76,79,0,76,74,0,72,0,67,69,72,0,0,0,74,0,77,81,0,77,76,0,74,72,69,67,69,0,0,0],b:[48,48,53,53,55,55,48,55]},
 {ms:330,l:[64,0,67,0,71,0,69,0,67,0,64,0,62,0,0,0,65,0,69,0,72,0,71,0,69,0,67,0,64,0,0,0],b:[40,40,45,45,41,41,43,43]}];
function musicStep(){const T=TR[C.track],i=mi%32;mi++;
 if(T.l[i])tone(fq(T.l[i]),T.ms*1.7/1000,'triangle',.2);
 if(i%4==0)tone(fq(T.b[i>>2]),T.ms*3.4/1000,'sine',.3)}
function musicStart(){if(!C.mus||mt)return;if(!au())return;mt=setInterval(musicStep,TR[C.track].ms)}
function musicStop(){clearInterval(mt);mt=null}
function musTog(){C.mus=C.mus?0:1;save();C.mus?musicStart():musicStop();document.querySelectorAll('.mt').forEach(b=>b.textContent=C.mus?'🎵':'🔇')}
document.addEventListener('pointerdown',()=>{au();musicStart()},{once:true});

/* ===== LIGA, MISI, LENCANA ===== */
const LG=[['🥉','Perunggu',0],['🥈','Perak',300],['🥇','Emas',800],['💎','Platinum',1600],['👑','Berlian',3000]];
const lgi=x=>{let k=0;LG.forEach((l,i)=>{if(x>=l[2])k=i});return k};
const BOT=[['Rani',120],['Dimas',420],['Salsa',700],['Bayu',950],['Putri',1500],['Raka',2300]];
const MS=[['🎮','Main 3 game',3,'g',20],['📚','Selesaikan 1 materi',1,'l',25],['⭐','Skor 50+ di satu game',1,'s',20]];
const BD=[['🌱','Pemula','Selesaikan 1 game',()=>P.stt.g>=1],['📚','Kutu Buku','Selesaikan 3 materi',()=>P.stt.l>=3],['🏆','Juara','Skor 100+ dalam satu game',()=>P.stt.b>=100],['🔥','Rajin','Streak 3 hari',()=>P.sk>=3],['🪙','Hartawan','Kumpulkan 200 koin',()=>P.tc>=200],['🥇','Liga Emas','Capai Liga Emas',()=>P.xp>=800]];
function chk(){BD.forEach((b,i)=>{if(!P.bd.includes(i)&&b[3]()){P.bd.push(i);toast(`${b[0]} Lencana baru: ${b[1]}!`);S$('win')}});save()}
const td=()=>new Date().toLocaleDateString('sv');
function dayInit(){const t=td();
 if(P.ld!=t){const y=new Date(Date.now()-864e5).toLocaleDateString('sv');P.sk=P.ld==y?P.sk+1:1;P.ld=t;
  const b=Math.min(P.sk,7)*2+3;addCo(b);setTimeout(()=>toast(`🔥 Streak ${P.sk} hari! +${b} 🪙`),2300)}
 if(!P.dm||P.dm.d!=t)P.dm={d:t,g:0,l:0,s:0,c:[0,0,0]};save()}

/* ===== 10 MINI GAME ===== */
const SU=[
{id:'mat',n:'Matematika',e:'🎈',g:'Tembak Balon',t:'bal',d:'Ketuk balon berisi jawaban',c:['#6366f1','#8b5cf6']},
{id:'pjok',n:'PJOK',e:'🏃',g:'Susun Gerakan',t:'seq',d:'Urutkan langkah olahraga',c:['#f97316','#ef4444']},
{id:'agm',n:'Pendidikan Agama',e:'🕌',g:'Pasangkan Kartu',t:'match',d:'Ingat & cocokkan kartu',c:['#10b981','#059669']},
{id:'ind',n:'Bahasa Indonesia',e:'📖',g:'Rangkai Huruf',t:'tiles',d:'Ketuk huruf jadi kata',c:['#ec4899','#f43f5e']},
{id:'ing',n:'Bahasa Inggris',e:'🔤',g:'Tebak Kata (Hangman)',t:'hang',d:'Tebak huruf, jaga nyawamu',c:['#3b82f6','#06b6d4']},
{id:'ipa',n:'IPA',e:'🔬',g:'Cari yang Beda',t:'odd',d:'Temukan gambar yang tak cocok',c:['#14b8a6','#22c55e']},
{id:'ips',n:'IPS',e:'🌏',g:'Tebak Ibu Kota',t:'type',d:'Ketik ibu kota provinsi',c:['#f59e0b','#d97706']},
{id:'pkn',n:'PPKn',e:'🇮🇩',g:'Kartu Benar/Salah',t:'tf',d:'Cepat putuskan kartunya',c:['#dc2626','#9f1239']},
{id:'sbd',n:'Seni Budaya',e:'🎹',g:'Simon Nada',t:'sim',d:'Ingat & ulangi urutan nada',c:['#a855f7','#ec4899']},
{id:'inf',n:'Informatika',e:'💡',g:'Lampu Biner',t:'bits',d:'Nyalakan lampu = angka',c:['#0ea5e9','#6366f1']}];
const L=s=>s.trim().split('\n').map(l=>l.trim().split('|'));
const K={
pjok:L(`Urutkan sesi olahraga|Pemanasan|Latihan inti|Pendinginan
Urutan lompat jauh|Awalan|Tolakan|Melayang|Mendarat
Urutan servis bola voli|Pegang bola|Lempar ke atas|Pukul bola|Bola lewati net
Urutan pagi hari sehat|Bangun tidur|Sikat gigi|Sarapan|Berangkat sekolah
Urutan menendang bola|Dekati bola|Letakkan kaki tumpu|Ayun kaki|Tendang bola
Urutan cuci tangan|Basahi tangan|Sabuni|Gosok|Bilas`),
pkn:L(`Sila pertama Pancasila: Ketuhanan Yang Maha Esa|1
Pancasila memiliki 7 sila|0
Bhinneka Tunggal Ika artinya berbeda-beda tetapi tetap satu|1
Lambang negara Indonesia adalah Garuda Pancasila|1
Hari Kemerdekaan RI jatuh pada 17 Agustus|1
UUD 1945 bukan dasar hukum negara|0
Gotong royong adalah contoh sikap sila ketiga|1
Mengambil hak orang lain sesuai nilai Pancasila|0`),
agm:L(`Masjid|Islam
Gereja|Kristen
Vihara|Buddha
Pura|Hindu
Klenteng|Konghucu`),
ind:L(`sekolah|Tempat belajar
buku|Dibaca untuk menambah ilmu
merdeka|Bebas dari penjajahan
jendela|Ada di dinding, tembus cahaya
pelajar|Orang yang sedang belajar
bahasa|Alat komunikasi
kursi|Tempat duduk
perpustakaan|Gudang buku`),
ing:L(`apple|Apel
school|Sekolah
teacher|Guru
water|Air
friend|Teman
family|Keluarga
window|Jendela
yellow|Kuning
rabbit|Kelinci
house|Rumah`),
ipa:L(`Mana yang BUKAN hewan?|🌳|🐘|🐢|🐟
Mana yang BUKAN sumber panas?|🧊|🔥|☀️|🌋
Mana yang makhluk hidup?|🌱|🪨|💧|⚙️
Mana yang BUKAN buah?|🥕|🍎|🍌|🍇
Mana yang berkembang biak dengan bertelur?|🐔|🐄|🐈|🐕
Mana yang BUKAN serangga?|🕷️|🐜|🦋|🐝
Mana yang bisa terbang?|🦅|🐧|🐘|🐢
Mana yang menghantarkan listrik?|🔩|🪵|🧵|🧱`),
ips:L(`Ibu kota Jawa Barat?|bandung
Ibu kota Jawa Timur?|surabaya
Ibu kota Jawa Tengah?|semarang
Ibu kota Sumatera Utara?|medan
Ibu kota Sulawesi Selatan?|makassar
Ibu kota Bali?|denpasar
Ibu kota Aceh?|banda aceh
Ibu kota Kalimantan Timur?|samarinda
Ibu kota Papua?|jayapura`)};
K.sbd=L(`Angklung|Jawa Barat
Sasando|NTT
Tifa|Papua
Reog|Ponorogo
Kecak|Bali
Tari Saman|Aceh`);

/* ===== MATERI & GURU ===== */
const TC={mat:['👨‍🏫','Pak Budi'],pjok:['🏋️','Pak Raga'],agm:['👩‍🏫','Bu Hana'],ind:['👩‍🏫','Bu Sari'],ing:['🧑‍🏫','Mr. Tom'],ipa:['👩‍🔬','Bu Dewi'],ips:['👨‍🏫','Pak Joko'],pkn:['👨‍💼','Pak Adi'],sbd:['🧑‍🎨','Kak Mira'],inf:['🧑‍💻','Kak Dika']};
const MT=[
{s:'mat',e:'✖️',t:'Perkalian Itu Mudah',p:['Halo, aku Pak Budi! 👋 Perkalian adalah penjumlahan berulang.\nContoh: 3 × 4 artinya 3 + 3 + 3 + 3 = 12.','Trik angka 9: jumlah digit hasil perkalian 9 selalu 9.\nContoh: 9 × 4 = 36 → 3 + 6 = 9 ✨','Urutan hitung: kerjakan KALI dan BAGI dulu, baru TAMBAH dan KURANG.\nContoh: 2 + 3 × 4 = 2 + 12 = 14.'],q:['Berapa hasil 6 × 7?','42','36','48']},
{s:'mat',e:'🍕',t:'Pecahan Pizza',p:['Pecahan menyatakan bagian dari keseluruhan.\nPizza dipotong 4 sama besar, kamu makan 1 potong → ¼ pizza.','Angka atas = pembilang (bagian yang diambil).\nAngka bawah = penyebut (jumlah seluruh potongan).','Pecahan senilai: ½ = 2/4 = 4/8.\nKalikan pembilang dan penyebut dengan angka yang sama!'],q:['Pizza dipotong 8, kamu makan 2. Pecahannya?','2/8','8/2','2/6']},
{s:'pjok',e:'🤸',t:'Pemanasan & Pendinginan',p:['Aku Pak Raga! 💪 Pemanasan 5–10 menit sebelum olahraga menyiapkan otot dan jantung agar tidak cedera.\nContoh: jalan cepat, putar bahu, peregangan.','Setelah olahraga lakukan pendinginan: jalan pelan dan peregangan agar detak jantung turun perlahan.','Jangan lupa minum air putih, istirahat cukup, dan makan bergizi. Tubuh sehat, belajar semangat!'],q:['Kapan pemanasan dilakukan?','Sebelum olahraga','Setelah olahraga','Saat tidur']},
{s:'agm',e:'🤝',t:'Toleransi Antarumat Beragama',p:['Aku Bu Hana. Indonesia punya enam agama yang diakui: Islam, Kristen, Katolik, Hindu, Buddha, dan Konghucu.','Toleransi berarti saling menghormati.\nContoh: tidak mengganggu teman yang sedang beribadah.','Kita boleh berbeda keyakinan, tetapi tetap bersahabat, tolong-menolong, dan menjaga kerukunan. 🕊️'],q:['Sikap toleran adalah…','Saling menghormati','Mengejek teman','Memaksa keyakinan']},
{s:'ind',e:'✍️',t:'Kata Baku dan Tidak Baku',p:['Halo, aku Bu Sari! Kata baku adalah kata yang sesuai kaidah bahasa Indonesia (KBBI). Dipakai di situasi resmi seperti surat dan pelajaran.','Contoh:\nBaku: apotek, ijazah, kualitas\nTidak baku: apotik, ijasah, kwalitas','Cara mudah: kalau ragu, cek KBBI! Tulisan resmi sebaiknya memakai kata baku. 📖'],q:['Mana kata baku?','Apotek','Apotik','Apotiq']},
{s:'ing',e:'👋',t:'Greetings & Perkenalan',p:['Hello! I am Mr. Tom. Salam dalam bahasa Inggris:\nGood morning = selamat pagi\nGood afternoon = selamat siang/sore\nGood evening = selamat petang\nGood night = selamat malam (sebelum tidur)','Perkenalan diri:\nMy name is Agus.\nI am 12 years old.\nNice to meet you!','I am = saya adalah\nYou are = kamu adalah\nHe/She is = dia adalah'],q:['“Good morning” artinya?','Selamat pagi','Selamat malam','Selamat tinggal']},
{s:'ipa',e:'🌱',t:'Fotosintesis',p:['Aku Bu Dewi! 🔬 Fotosintesis adalah proses tumbuhan membuat makanan sendiri di daun menggunakan klorofil (zat hijau daun).','Bahan: air + karbon dioksida + cahaya matahari.\nHasil: gula (makanan) + oksigen.','Oksigen dari tumbuhan kita hirup untuk bernapas. Jadi, ayo tanam dan jaga pohon! 🌳'],q:['Gas apa yang dihasilkan fotosintesis?','Oksigen','Karbon dioksida','Nitrogen']},
{s:'ipa',e:'🧊',t:'Wujud Zat',p:['Zat punya 3 wujud: padat (es), cair (air), dan gas (uap air).','Perubahan wujud:\nEs → air = mencair\nAir → es = membeku\nAir → uap = menguap\nUap → air = mengembun','Penyebabnya adalah panas: zat dipanaskan bisa mencair atau menguap, didinginkan bisa membeku atau mengembun.'],q:['Air berubah menjadi uap disebut?','Menguap','Membeku','Mengembun']},
{s:'ips',e:'🧭',t:'Peta & Arah Mata Angin',p:['Aku Pak Joko! 🌏 Peta adalah gambaran permukaan bumi pada bidang datar yang diperkecil.','Ada 8 arah mata angin: Utara, Timur Laut, Timur, Tenggara, Selatan, Barat Daya, Barat, dan Barat Laut.','Pengingat: matahari terbit di Timur dan terbenam di Barat. Jarum kompas menunjuk ke Utara.'],q:['Matahari terbit di arah?','Timur','Barat','Selatan']},
{s:'pkn',e:'⭐',t:'Lima Sila Pancasila',p:['Aku Pak Adi. Pancasila adalah dasar negara Indonesia, terdiri dari 5 sila dan berlambang Garuda Pancasila.','1. Ketuhanan Yang Maha Esa ⭐\n2. Kemanusiaan yang Adil dan Beradab 🔗\n3. Persatuan Indonesia 🌳\n4. Kerakyatan (musyawarah) 🐂\n5. Keadilan Sosial bagi Seluruh Rakyat Indonesia 🌾','Mengamalkannya: sila 3 dengan bergotong royong, sila 5 dengan bersikap adil dan mau berbagi.'],q:['Lambang sila ke-3 (Persatuan Indonesia)?','Pohon beringin','Bintang','Rantai']},
{s:'sbd',e:'🥁',t:'Alat Musik Tradisional',p:['Hai, aku Kak Mira! 🎨 Indonesia kaya alat musik tradisional. Angklung dari Jawa Barat dibunyikan dengan digoyangkan. 🎋','Sasando dari NTT dipetik seperti harpa. Tifa dari Papua dan Maluku dipukul. Gamelan dari Jawa dan Bali dimainkan bersama-sama.','Ayo jaga budaya kita: belajar memainkannya dan bangga pada karya bangsa sendiri! 🇮🇩'],q:['Angklung berasal dari?','Jawa Barat','Papua','Aceh']},
{s:'inf',e:'🔢',t:'Mengenal Bilangan Biner',p:['Aku Kak Dika! 💻 Komputer hanya mengerti dua angka: 0 (mati) dan 1 (hidup). Itu disebut bilangan biner.','Nilai tiap posisi dari kanan: 1, 2, 4, 8, 16… (dikali 2 terus).\nContoh: 101 = 4 + 0 + 1 = 5','Contoh lain: 1010 = 8 + 0 + 2 + 0 = 10.\nCoba mainkan game Lampu Biner! 💡'],q:['Biner 11 sama dengan desimal…','3','2','4']}];
const sj=id=>SU.find(s=>s.id==id);
function type(el,txt){clearInterval(tw);let i=0;const a=$('.tav');if(a)a.classList.add('talk');el.textContent='';
 tw=setInterval(()=>{el.textContent=txt.slice(0,++i);if(i>=txt.length){clearInterval(tw);if(a)a.classList.remove('talk')}},22)}
function say(t){try{speechSynthesis.cancel();const u=new SpeechSynthesisUtterance(String(t).replace(/\n/g,'. '));u.lang='id-ID';speechSynthesis.speak(u)}catch(e){}}
function openMat(k){S$('tap');load(`${TC[MT[k].s][1]} datang…`,()=>{LS={k,i:0};rl()})}
function rl(){const m=MT[LS.k],T=TC[m.s],n=m.p.length,q=LS.i>=n;
 if(q&&!LS.o)LS.o=sh(m.q.slice(1));
 LS.txt=q?'Sekarang cek pemahamanmu ya! Pilih jawaban yang benar.':m.p[LS.i];
 A.className='nw';
 A.innerHTML=`<div class="top"><button class="back" onclick="exitL()">← Menu</button><span>${m.e} ${m.t}</span><button class="ib" style="width:38px;height:38px" onclick="say(LS.txt)">🔊</button></div>
 <div class="dots">${Array.from({length:n+1},(_,i)=>`<i class="${i<=LS.i?'on':''}"></i>`).join('')}</div>
 <div class="tch"><div class="tav">${T[0]}</div><div class="bub"><b>${T[1]}</b><p id="tx"></p></div></div>`+
 (q?`<div class="q">${m.q[0]}</div><div id="fb"></div>${LS.o.map((o,i)=>`<button class="opt" onclick="lq(${i})">${o}</button>`).join('')}<div style="text-align:center"><button class="chip" onclick="nl(-1)">◀ Baca ulang materi</button></div>`
 :`<div class="row"><button class="chip" ${LS.i?'':'disabled'} onclick="nl(-1)">◀</button><button class="go" style="flex:1;height:48px" onclick="nl(1)">${LS.i==n-1?'Cek Paham ✔':'Lanjut ▶'}</button></div>`);
 type($('#tx'),LS.txt)}
function nl(d){LS.i+=d;S$('tap');rl()}
function lq(i){const m=MT[LS.k],b=document.querySelectorAll('.opt')[i];
 if(LS.o[i]==m.q[1]){S$('ok');b.classList.add('ok');setTimeout(fl,700)}
 else{S$('no');b.classList.add('no');b.disabled=true;$('#fb').textContent='🤔 Hampir! Baca lagi penjelasan guru, lalu coba lagi.'}}
function fl(){const m=MT[LS.k],T=TC[m.s],first=!P.dl[LS.k];P.dl[LS.k]=1;
 const xp=first&&C.league?20:0,co=first?15:3;P.xp+=xp;addCo(co);P.stt.l++;P.dm.l++;save();chk();S$('win');conf();
 A.className='nw';
 A.innerHTML=`<div class="res"><div class="big">${T[0]}</div><h2>Materi selesai! 🎉</h2><p>${T[1]}: “Hebat, kamu sudah paham ${m.t}!”</p><div class="rk"><span>Hadiah</span><span>${xp?'+'+xp+' XP · ':''}+${co} 🪙</span></div><button class="chip on" onclick="start('${m.s}')">🎮 Main ${sj(m.s).g}</button><button class="chip" onclick="home()">📚 Materi lain</button></div>`}
function exitL(){try{speechSynthesis.cancel()}catch(e){}home()}

/* ===== PEMBUAT SOAL ===== */
const pickB=id=>{if(!S.pool.length)S.pool=sh(K[id]);return S.pool.pop()};
const BC=['#ef4444','#3b82f6','#22c55e','#f59e0b'],PADN=[60,64,67,72];
function gen(){const t=S.s.t,id=S.s.id,lv=C.lvl;
 if(t=='bal'){const o=R(0,2),mx=[20,99,500][lv],ml=[9,12,25][lv];let a,b,r,y;
  if(o==0){a=R(2,mx);b=R(2,mx);r=a+b;y='+'}else if(o==1){a=R(5,mx);b=R(1,a-1);r=a-b;y='−'}else{a=R(2,ml);b=R(2,ml);r=a*b;y='×'}
  const s=new Set([r]);while(s.size<4){const d=r+R(-10,10);if(d>=0)s.add(d)}
  const op=sh([...s]);return{q:`${a} ${y} ${b} = ?`,o:op.map(String),ai:op.indexOf(r),show:String(r)}}
 if(t=='bits'){const nb=[4,6,8][lv],n=R(1,(1<<nb)-1);return{q:`Nyalakan lampu agar jumlahnya <b>${n}</b>`,bits:1,nb,n,b:Array(nb).fill(0),show:n.toString(2)+' (biner)'}}
 if(t=='sim'){const len=Math.min(8,3+Math.floor(S.n/S.np));return{q:'🎵 Perhatikan nadanya…',sim:1,pat:Array.from({length:len},()=>R(0,3)),pos:0,ph:0}}
 const b=pickB(id);
 if(t=='type')return{q:b[0],a:b[1],show:b[1]};
 if(t=='tiles'){let c=b[0].split(''),s;do{s=sh(c)}while(s.join('')==b[0]);return{q:`Susun jadi kata<br><small style="color:var(--mut);font-weight:500">Petunjuk: ${b[1]}</small>`,tl:1,w:b[0],t:s,got:[],show:b[0]}}
 if(t=='hang')return{q:`Tebak kata Inggris untuk “${b[1]}”`,hang:1,w:b[0].toUpperCase(),g:[],bad:0,show:b[0]};
 if(t=='seq'){const it=b.slice(1);let s;do{s=sh(it)}while(s.join()==it.join());return{q:b[0],seq:1,it:s,ans:it,got:[],er:0,show:it.join(' → ')}}
 if(t=='odd'){const o=sh(b.slice(1)),ai=o.indexOf(b[1]);return{q:b[0],o,ai,show:b[1]}}
 return{q:b[0],o:['✅ Benar','❌ Salah'],ai:b[1]=='1'?0:1,show:b[1]=='1'?'Benar':'Salah',card:1}}

/* ===== TAMPILAN UTAMA ===== */
const LOGO=`<svg width="42" height="42" viewBox="0 0 64 64"><rect width="64" height="64" rx="16" fill="#7c3aed"/><path d="M32 14 8 27l24 12 18-9v13h4V29z" fill="#fff"/><path d="M18 36v8c0 4 7 8 14 8s14-4 14-8v-8l-14 7z" fill="#fff" opacity=".85"/></svg>`;
$('#ld .lg').innerHTML=LOGO.replace(/42/g,'84');
setTimeout(()=>{const l=$('#ld');l.style.opacity=0;setTimeout(()=>l.remove(),500)},1800);
function load(t,cb){const d=document.createElement('div');d.className='ldr';d.innerHTML=`<div class="sp"></div><span>${t}</span>`;document.body.appendChild(d);setTimeout(()=>{d.remove();cb()},800)}

function home(){stopT();clearInterval(tw);if(S)S.run=false;
 const k=lgi(P.xp),n=LG[k+1],pr=n?Math.round((P.xp-LG[k][2])/(n[2]-LG[k][2])*100):100;
 A.className='nw';
 A.innerHTML=`<div class="hd">${LOGO}<h1>Belajar.Id</h1><button class="ib mt" onclick="musTog()">${C.mus?'🎵':'🔇'}</button><button class="ib" onclick="openLg()">🏆</button><button class="ib" onclick="openSet()">⚙️</button></div>
 <div class="pf"><button class="av" onclick="openShop()">${AV[P.av][0]}</button><div class="pi">
  <div class="pn"><span id="pn">${esc(P.name)}</span><button class="pe" id="pe" onclick="en()" title="Ganti nama">✏️</button></div>
  <div class="ps" onclick="openLg()">${C.league?`${LG[k][0]} Liga ${LG[k][1]} · ${P.xp} XP`:'Liga dimatikan'}</div>
  <div class="tbar" style="margin:0;height:8px"><i class="xp" id="xb" style="width:0"></i></div>
  <div class="ps" style="margin:6px 0 0;cursor:default">🔥 ${P.sk} hari · 🪙 ${P.co} koin</div></div></div>
 <div class="modes" style="margin-top:0"><button class="chip" onclick="openMis()">🎯 Misi Harian</button><button class="chip" onclick="openShop()">🛍️ Toko</button><button class="chip" onclick="openBdg()">🏅 Lencana</button></div>
 <input id="q" placeholder="🔍 Cari pelajaran… (mis. Matematika)" oninput="grid()" autocomplete="off">
 <div class="modes">${[[1,'👤 Solo'],[2,'⚔️ Duel (2)'],[4,'👥 Squad (4)']].map(m=>`<button class="chip ${m[0]==M?'on':''}" onclick="M=${m[0]};S$('tap');home()">${m[1]}</button>`).join('')}</div>
 <div id="grid" class="grid"></div>
 <h3 class="sh">📚 Materi Belajar<small>Belajar bareng guru dulu, lalu main game!</small></h3><div id="ml" class="ml"></div>
 <footer>© Belajar.Id · by Reval</footer>`;
 $('#q').value=Q;grid();setTimeout(()=>{const x=$('#xb');if(x)x.style.width=pr+'%'},60)}
function en(){$('#pn').innerHTML=`<input id="ni" maxlength="14" value="${esc(P.name)}" onkeydown="if(event.key=='Enter')sn()">`;
 const b=$('#pe');b.textContent='✔';b.onclick=sn;$('#ni').focus();$('#ni').select()}
function sn(){const v=$('#ni').value.trim();if(v)P.name=v.slice(0,14);save();S$('ok');home()}
function grid(){Q=$('#q').value;const q=Q.toLowerCase().trim();
 const f=SU.filter(s=>(s.n+s.g+s.d).toLowerCase().includes(q));
 $('#grid').innerHTML=f.length?f.map((s,i)=>`<button class="card" style="--g1:${s.c[0]};--g2:${s.c[1]};--i:${i}" onclick="start('${s.id}')"><span class="hs">${P.hs[s.id]?'⭐ '+P.hs[s.id]:''}</span><span class="em">${s.e}</span><b>${s.n}</b><small>${s.g}</small><i>${s.d}</i></button>`).join(''):'<p style="color:var(--mut)">Pelajaran tidak ditemukan 🔎</p>';
 const mf=MT.map((m,i)=>[m,i]).filter(([m])=>(m.t+sj(m.s).n+TC[m.s][1]).toLowerCase().includes(q));
 $('#ml').innerHTML=mf.length?mf.map(([m,i],j)=>{const s=sj(m.s);return`<button class="mi" style="--g1:${s.c[0]};--g2:${s.c[1]};--i:${j}" onclick="openMat(${i})"><span>${m.e}</span><div><b>${m.t}</b><small>${s.n} · ${TC[m.s][0]} ${TC[m.s][1]}</small></div><em>${P.dl[i]?'✅':'▶️'}</em></button>`}).join(''):'<p style="color:var(--mut)">Materi tidak ditemukan 🔎</p>'}
function start(id){const s=sj(id);S$('tap');
 load(`Menyiapkan ${s.n}…`,()=>{const np=M,per=np==1?8:np==2?5:4;
  S={s,np,sc:Array(np).fill(0),st:Array(np).fill(0),turn:0,n:0,total:per*np,pool:[],run:true};
  S.max=s.t=='match'?K[id].length*10:S.total*15;
  s.t=='match'?initM():nextQ()})}
const board=()=>`<div class="board">${S.sc.map((v,i)=>`<div class="pl ${i==S.turn?'act':''}" style="--c:${PC[i]}"><span>${S.np==1?'Skor':nm(i)}</span><b>${v}</b></div>`).join('')}</div>`;
const topbar=()=>`<div class="top"><button class="back" onclick="home()">← Menu</button><span>${S.s.e} ${S.s.g}</span><button class="ib mt" style="width:38px;height:38px" onclick="musTog()">${C.mus?'🎵':'🔇'}</button></div>`;

/* ===== TIMER ===== */
function stopT(){clearInterval(tm);tm=null}
function startT(){stopT();if(!C.timer||!S||S.q.sim)return;S.tl=TS[C.lvl]*(S.q.o||S.q.a!==undefined?1:2);S.t0=Date.now();
 tm=setInterval(()=>{const r=S.tl*1000-(Date.now()-S.t0),b=$('#tb');if(b)b.style.width=Math.max(0,r/(S.tl*10))+'%';
  if(r<=0){stopT();if(!lock)done(false,S.q.show)}},100)}

/* ===== JALAN SOAL ===== */
function nextQ(){if(S.n>=S.total)return end();S.q=gen();lock=false;draw(1);startT();if(S.q.sim)playSim()}
function draw(f){const q=S.q,t=S.s.t;let b='';
 if(q.seq)b=`<div class="sg">${q.got.map((g,k)=>`<span class="pill">${k+1}. ${q.it[g]}</span>`).join('')||'<span style="color:var(--mut)">Ketuk urutan yang benar…</span>'}</div>`+q.it.map((x,i)=>q.got.includes(i)?'':`<button class="opt" onclick="sq(${i})">${x}</button>`).join('');
 else if(q.tl)b=`<div class="sg">${q.got.map(g=>`<span class="pill">${q.t[g]}</span>`).join('')||'<span style="color:var(--mut)">Ketuk huruf…</span>'}</div><div class="kb">${q.t.map((c,i)=>`<button class="tl" ${q.got.includes(i)?'disabled':''} onclick="tl(${i})">${c}</button>`).join('')}</div><div style="text-align:center"><button class="chip" style="margin-top:10px" onclick="if(!lock){S.q.got.pop();S$('tap');draw()}">↩ Hapus</button></div>`;
 else if(q.hang)b=`<div class="hw">${[...q.w].map(c=>q.g.includes(c)?c:'_').join(' ')}</div><div style="text-align:center;margin:6px">${'❤️'.repeat(6-q.bad)}${'🖤'.repeat(q.bad)}</div><div class="kb">${'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('').map(c=>`<button class="tl sm" ${q.g.includes(c)?'disabled':''} onclick="hg('${c}')">${c}</button>`).join('')}</div>`;
 else if(q.bits)b=`<div class="bt">${q.b.map((v,i)=>`<button class="bb ${v?'on':''}" onclick="tb(${i})">${v?'💡':'⚫'}<small>${1<<(q.nb-1-i)}</small></button>`).join('')}</div><div style="text-align:center;font-weight:800;margin:12px">Jumlah: ${q.b.reduce((s,v,i)=>s+(v?1<<(q.nb-1-i):0),0)}</div><button class="go" style="width:100%;height:48px" onclick="cb()">Cek ✔</button>`;
 else if(q.sim)b=`<div class="pads">${[0,1,2,3].map(i=>`<button class="pad" id="p${i}" style="--p:${BC[i]}" onclick="pp(${i})"></button>`).join('')}</div>`;
 else if(t=='bal')b=`<div class="bls">${q.o.map((o,i)=>`<button class="bln" style="--b:${BC[i]};--d:${i*.4}s" onclick="pick(${i})">${o}</button>`).join('')}</div>`;
 else if(q.o)b=`<div class="${t=='odd'?'og':''}">`+q.o.map((o,i)=>`<button class="opt ${t=='odd'?'big':''}" onclick="pick(${i})">${o}</button>`).join('')+'</div>';
 else b=`<div class="row"><input id="ai" autocomplete="off" autocapitalize="none" placeholder="Ketik jawaban…" onkeydown="if(event.key=='Enter')pick()"><button class="go" onclick="pick()">OK</button></div>`;
 A.className=f?'nw':'';
 A.innerHTML=topbar()+board()+`<div class="turn" style="color:${PC[S.turn]}">${S.np>1?nm(S.turn)+', giliranmu! · ':''}Soal ${S.n+1}/${S.total}${S.st[S.turn]>1?' · 🔥x'+S.st[S.turn]:''}</div>`+
 (C.timer&&!q.sim?'<div class="tbar"><i id="tb"></i></div>':'')+`<div class="q ${q.card?'sl':''}">${q.q}</div><div id="fb"></div>`+b;
 if($('#ai'))$('#ai').focus()}
function pick(i){if(lock)return;stopT();const q=S.q;let ok;
 if(q.o){ok=i==q.ai;document.querySelectorAll('.opt,.bln').forEach((b,j)=>{if(j==q.ai)b.classList.add('ok');else if(j==i)b.classList.add('no')})}
 else ok=$('#ai').value.trim().toLowerCase()==q.a.toLowerCase();
 done(ok,q.show)}
function sq(i){if(lock)return;const q=S.q;
 if(q.it[i]==q.ans[q.got.length]){q.got.push(i);S$('tap');draw();if(q.got.length==q.ans.length){stopT();done(true,q.show,q.er?6:15)}}
 else{q.er++;S$('no');$('#fb').textContent='❌ Belum tepat, coba lagi'}}
function tl(i){if(lock)return;const q=S.q;q.got.push(i);S$('tap');draw();
 if(q.got.length==q.t.length){const g=q.got.map(k=>q.t[k]).join('');stopT();done(g==q.w,q.show)}}
function hg(c){if(lock)return;const q=S.q;if(q.g.includes(c))return;q.g.push(c);
 if(q.w.includes(c))S$('tap');else{q.bad++;S$('no')}
 draw();
 if([...q.w].every(x=>q.g.includes(x))){stopT();done(true,q.show,Math.max(6,15-q.bad*2))}
 else if(q.bad>=6){stopT();done(false,q.show)}}
function tb(i){if(lock)return;S.q.b[i]^=1;S$('tap');draw()}
function cb(){if(lock)return;const q=S.q,s=q.b.reduce((a,v,i)=>a+(v?1<<(q.nb-1-i):0),0);stopT();done(s==q.n,q.show)}
function lit(p){if(C.sfx)tone(fq(PADN[p]),.4,'triangle',.5);const e=$('#p'+p);if(e){e.classList.add('lit');setTimeout(()=>e.classList.remove('lit'),350)}}
function playSim(){const q=S.q,s0=S;lock=true;let i=0;
 const st=()=>{if(S!==s0||S.q!==q||!S.run)return;
  if(i>=q.pat.length){lock=false;q.ph=1;const f=$('#fb');if(f)f.textContent='🎹 Giliranmu, ulangi urutannya!';return}
  lit(q.pat[i++]);setTimeout(st,650)};
 setTimeout(st,700)}
function pp(p){const q=S.q;if(lock||q.ph!=1)return;lit(p);
 if(p!=q.pat[q.pos])return done(false,'');
 q.pos++;if(q.pos==q.pat.length)done(true,'',10+q.pat.length*2)}
function done(ok,ans,pts){if(lock&&S.fin)return;lock=true;S.fin=1;stopT();const t=S.turn;let p=0,m;
 if(ok){S.st[t]++;p=pts||10+Math.min(S.st[t]-1,4)*2;m=`✅ Benar! +${p}${S.st[t]>1?' 🔥x'+S.st[t]:''}`;S$('ok')}
 else{S.st[t]=0;m=ans?`❌ Jawaban: <b>${ans}</b>`:'❌ Kurang tepat';S$('no')}
 S.sc[t]+=p;const f=$('#fb');if(f)f.innerHTML=m;
 const q=$('.q');if(q)q.classList.add(ok?'pop':'shake');
 const b=$('.pl.act b');if(b)b.textContent=S.sc[t];
 const s0=S;setTimeout(()=>{if(S!==s0||!S.run)return;S.fin=0;S.n++;S.turn=(S.turn+1)%S.np;nextQ()},1500)}

/* ===== PASANGKAN KARTU ===== */
function initM(){S.cards=sh(K[S.s.id].flatMap((p,k)=>[{t:p[0],k},{t:p[1],k}]));S.op=[];S.dn=new Set();lock=false;drawM(1)}
function drawM(f){A.className=f?'nw':'';
 A.innerHTML=topbar()+board()+`<div class="turn" style="color:${PC[S.turn]}">${S.np>1?nm(S.turn)+', giliranmu!':'Temukan semua pasangan'}</div><div class="mg">`+
 S.cards.map((c,i)=>{const d=S.dn.has(i),o=S.op.includes(i);return`<button class="mc ${d?'dn':o?'op':''}" onclick="flip(${i})">${d||o?c.t:'❓'}</button>`}).join('')+'</div>'}
function flip(i){if(lock||S.op.includes(i)||S.dn.has(i))return;S.op.push(i);S$('tap');
 if(S.op.length<2)return drawM();
 const[a,b]=S.op;lock=true;
 if(S.cards[a].k==S.cards[b].k){S.dn.add(a);S.dn.add(b);S.sc[S.turn]+=10;S.op=[];lock=false;S$('ok');drawM();
  if(S.dn.size==S.cards.length){const s0=S;setTimeout(()=>{if(S===s0&&S.run)end()},800)}return}
 S$('no');drawM();const s0=S;
 setTimeout(()=>{if(S!==s0||!S.run)return;S.op=[];S.turn=(S.turn+1)%S.np;lock=false;drawM()},900)}

/* ===== HASIL ===== */
function conf(){for(let i=0;i<34;i++){const s=document.createElement('span');s.className='cf';s.textContent=['🎉','⭐','✨','🎊','🏆'][i%5];
 s.style.left=R(0,95)+'vw';s.style.animationDelay=(Math.random()*.9)+'s';document.body.appendChild(s);setTimeout(()=>s.remove(),3800)}}
function end(){stopT();S.run=false;
 const mx=Math.max(...S.sc),w=S.sc.map((v,i)=>v==mx?i:-1).filter(i=>i>=0);
 const win=S.np==1?mx>=S.max*.5:w.length==1;
 const t=S.np==1?(mx>=S.max*.8?'🌟 Hebat!':mx>=S.max*.5?'👍 Bagus!':'💪 Ayo coba lagi!'):w.length>1?'🤝 Seri!':`🏆 ${nm(w[0])} menang!`;
 let xp=0;if(C.league){xp=S.sc[0];P.xp+=xp}
 const co=Math.round(S.sc[0]/5);addCo(co);P.stt.g++;P.stt.b=Math.max(P.stt.b,S.sc[0]);P.dm.g++;if(S.sc[0]>=50)P.dm.s=1;
 P.hs[S.s.id]=Math.max(P.hs[S.s.id]||0,S.sc[0]);save();chk();
 S$('win');if(win)conf();
 const rk=S.sc.map((v,i)=>[i,v]).sort((a,b)=>b[1]-a[1]),k=lgi(P.xp),mt=MT.findIndex(m=>m.s==S.s.id);
 A.className='nw';
 A.innerHTML=`<div class="res"><div class="big">${S.s.e}</div><h2>${t}</h2>`+
 rk.map(r=>`<div class="rk" style="border-color:${PC[r[0]]}"><span>${S.np==1?'Skor akhir':nm(r[0])}</span><span>${r[1]}${S.np==1?' / '+S.max:''}</span></div>`).join('')+
 `<p style="font-weight:700">${C.league?`${LG[k][0]} Liga ${LG[k][1]} · +${xp} XP · `:''}+${co} 🪙 (${nm(0)})</p>`+
 `<button class="chip on" onclick="start('${S.s.id}')">🔁 Main Lagi</button>${mt>=0?`<button class="chip" onclick="openMat(${mt})">📚 Belajar Materi</button>`:''}<button class="chip" onclick="home()">🏠 Menu</button></div>`}

/* ===== MODAL ===== */
function modal(h){const y=($('.mb')||{}).scrollTop||0;closeM();const d=document.createElement('div');d.id='md';d.className='md';
 d.innerHTML=`<div class="mb"><button class="x" onclick="closeM()">✕</button>${h}</div>`;d.onclick=e=>{if(e.target==d)closeM()};
 document.body.appendChild(d);$('.mb').scrollTop=y}
function closeM(){const d=$('#md');if(d)d.remove()}
function openLg(){const k=lgi(P.xp),n=LG[k+1],cur=LG[k],pr=n?Math.round((P.xp-cur[2])/(n[2]-cur[2])*100):100;
 const rows=[...BOT.map(b=>[b[0],b[1],0]),[P.name,P.xp,1]].sort((a,b)=>b[1]-a[1]);
 modal(`<h2>🏆 Liga</h2>${C.league?'':'<p style="color:var(--mut)">Liga dimatikan di Setting — XP tidak bertambah.</p>'}
 <div class="lgc"><div style="font-size:56px">${cur[0]}</div><b>Liga ${cur[1]}</b><div>${P.xp} XP${n?` · ${n[2]-P.xp} XP lagi ke ${n[1]}`:' · Level tertinggi!'}</div>
 <div class="tbar"><i class="xp" style="width:${pr}%"></i></div></div>
 <div class="lb">Papan Peringkat</div>`+rows.map((r,i)=>`<div class="rk ${r[2]?'me':''}"><span>${i+1}. ${LG[lgi(r[1])][0]} ${esc(r[0])}</span><span>${r[1]} XP</span></div>`).join('')+
 `<div class="lb">Skor Tertinggi</div>`+(SU.filter(s=>P.hs[s.id]).map(s=>`<div class="rk"><span>${s.e} ${s.n}</span><span>${P.hs[s.id]}</span></div>`).join('')||'<p style="color:var(--mut)">Belum ada. Ayo main!</p>'))}
function openMis(){const d=P.dm;
 modal(`<h2>🎯 Misi Harian</h2><p style="color:var(--mut)">Reset tiap hari · 🔥 Streak ${P.sk} hari</p>`+MS.map((m,i)=>{const v=Math.min(d[m[3]],m[2]),ok=v>=m[2];
  return`<div class="rk" style="display:block"><div style="display:flex;justify-content:space-between"><span>${m[0]} ${m[1]}</span><span>${v}/${m[2]}</span></div><div class="tbar"><i class="xp" style="width:${v/m[2]*100}%"></i></div>${d.c[i]?'<small>✅ Sudah diklaim</small>':`<button class="chip ${ok?'on':''}" ${ok?'':'disabled'} onclick="clm(${i})">Klaim 🪙 ${m[4]}</button>`}</div>`}).join(''))}
function clm(i){const m=MS[i],d=P.dm;if(d.c[i]||d[m[3]]<m[2])return;d.c[i]=1;addCo(m[4]);save();S$('ok');toast(`+${m[4]} 🪙 Misi selesai!`);chk();home();openMis()}
function openShop(){
 modal(`<h2>🛍️ Toko Avatar</h2><p>Koinmu: <b>🪙 ${P.co}</b> · Dapatkan koin dari game, materi, dan misi.</p><div class="shp">`+
 AV.map((a,i)=>{const o=P.own.includes(i);return`<div class="it ${P.av==i?'cur':''}"><div style="font-size:42px">${a[0]}</div>${o?`<button class="chip ${P.av==i?'on':''}" onclick="use(${i})">${P.av==i?'✔ Dipakai':'Pakai'}</button>`:`<button class="chip" ${P.co<a[1]?'disabled':''} onclick="buy(${i})">🪙 ${a[1]}</button>`}</div>`}).join('')+'</div>')}
function use(i){P.av=i;save();S$('tap');home();openShop()}
function buy(i){if(P.co<AV[i][1])return;P.co-=AV[i][1];P.own.push(i);P.av=i;save();S$('ok');toast(`${AV[i][0]} Avatar baru dipakai!`);home();openShop()}
function openBdg(){modal(`<h2>🏅 Lencana</h2><p style="color:var(--mut)">${P.bd.length}/${BD.length} terbuka</p>`+BD.map((b,i)=>`<div class="bdg ${P.bd.includes(i)?'':'lk'}"><span>${b[0]}</span><div><b>${b[1]}</b><small>${b[2]}</small></div></div>`).join(''))}
function openSet(){
 const tg=(k,l)=>`<div class="st"><span>${l}</span><button class="sw ${C[k]?'on':''}" onclick="sw('${k}')"></button></div>`;
 const op=(k,arr)=>`<div class="modes">${arr.map(a=>`<button class="chip ${C[k]==a[0]?'on':''}" onclick="setO('${k}',${JSON.stringify(a[0]).replace(/"/g,"'")})">${a[1]}</button>`).join('')}</div>`;
 modal(`<h2>⚙️ Setting</h2>
 <div class="lb">Suara</div>${tg('sfx','🔊 Efek suara')}${tg('mus','🎵 Musik latar')}
 <div class="st"><span>Volume</span><input type="range" min="0" max="1" step=".05" value="${C.vol}" style="width:55%" oninput="C.vol=+this.value;save()"></div>
 <div class="lb">Lagu</div>${op('track',[[0,'🎶 Ceria'],[1,'🌙 Santai']])}
 <div class="lb">Permainan</div>${tg('timer','⏱️ Timer tiap soal')}
 <div class="st"><span>Kesulitan</span></div>${op('lvl',[[0,'Mudah'],[1,'Normal'],[2,'Sulit']])}
 <div class="lb">Liga</div>${tg('league','🏆 Aktifkan Liga (XP)')}
 <button class="chip" onclick="if(confirm('Reset XP & skor tertinggi?')){P.xp=0;P.hs={};save();openSet()}">♻️ Reset XP Liga</button>
 <div class="lb">Nama Pemain 2–4 (Duel/Squad)</div>${[1,2,3].map(i=>`<input value="${nm(i)}" maxlength="12" style="margin:4px 0" oninput="C.names[${i}]=this.value;save()">`).join('')}
 <p style="color:var(--mut);font-size:13px">Nama Pemain 1 diganti lewat ikon ✏️ di profil.</p>
 <div class="lb">Tema</div>${op('theme',[['auto','Otomatis'],['light','Terang'],['dark','Gelap']])}`)}
function sw(k){C[k]=C[k]?0:1;save();if(k=='mus')C.mus?musicStart():musicStop();openSet()}
function setO(k,v){C[k]=v;save();if(k=='theme')theme();if(k=='track'){musicStop();musicStart()}openSet()}

dayInit();home();
</script>
</body>
</html>
