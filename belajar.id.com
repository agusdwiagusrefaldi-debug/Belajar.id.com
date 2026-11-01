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
pelajar|Or
