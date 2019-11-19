# Docker containter for auto test SSD I/O speed using fio (Flexible I/O Tester)

Usage:

```bash
docker run marlic/docker-fio-ssd-autotest  
```

and after about 5 minut You get something like:

```text
seq-read: (g=0): rw=read, bs=(R) 4096B-4096B, (W) 4096B-4096B, (T) 4096B-4096B, ioengine=libaio, iodepth=4
rand-read: (g=1): rw=randread, bs=(R) 4096B-4096B, (W) 4096B-4096B, (T) 4096B-4096B, ioengine=libaio, iodepth=4
seq-write: (g=2): rw=write, bs=(R) 4096B-4096B, (W) 4096B-4096B, (T) 4096B-4096B, ioengine=libaio, iodepth=4
rand-write: (g=3): rw=randwrite, bs=(R) 4096B-4096B, (W) 4096B-4096B, (T) 4096B-4096B, ioengine=libaio, iodepth=4
fio-3.1
Starting 4 processes
seq-read: Laying out IO file (1 file / 10240MiB)

seq-read: (groupid=0, jobs=1): err= 0: pid=16: Tue Nov 19 09:14:05 2019
   read: IOPS=49.0k, BW=195MiB/s (205MB/s)(10.0GiB/52430msec)
    slat (nsec): min=1787, max=145192, avg=5079.95, stdev=2852.65
    clat (usec): min=16, max=299230, avg=74.38, stdev=2072.58
     lat (usec): min=29, max=299232, avg=79.53, stdev=2072.59
    clat percentiles (usec):
     |  1.00th=[    39],  5.00th=[    40], 10.00th=[    41], 20.00th=[    43],
     | 30.00th=[    45], 40.00th=[    48], 50.00th=[    49], 60.00th=[    50],
     | 70.00th=[    51], 80.00th=[    52], 90.00th=[    53], 95.00th=[    55],
     | 99.00th=[    76], 99.50th=[    96], 99.90th=[   635], 99.95th=[  1991],
     | 99.99th=[107480]
   bw (  KiB/s): min=20854, max=228108, per=75.05%, avg=150089.21, stdev=78089.18, samples=104
   iops        : min= 5213, max=57027, avg=37521.89, stdev=19522.35, samples=104
  lat (usec)   : 20=0.01%, 50=63.90%, 100=35.66%, 250=0.29%, 500=0.04%
  lat (usec)   : 750=0.01%, 1000=0.01%
  lat (msec)   : 2=0.04%, 4=0.03%, 10=0.01%, 20=0.01%, 50=0.01%
  lat (msec)   : 100=0.01%, 250=0.01%, 500=0.01%
  cpu          : usr=11.09%, sys=29.65%, ctx=1709736, majf=0, minf=12
  IO depths    : 1=0.1%, 2=0.1%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued rwt: total=2621440,0,0, short=0,0,0, dropped=0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=4
rand-read: (groupid=1, jobs=1): err= 0: pid=17: Tue Nov 19 09:14:05 2019
   read: IOPS=25.7k, BW=101MiB/s (105MB/s)(6034MiB/60001msec)
    slat (usec): min=2, max=150, avg= 5.95, stdev= 2.77
    clat (usec): min=38, max=8616, avg=148.55, stdev=68.11
     lat (usec): min=110, max=8631, avg=154.57, stdev=68.09
    clat percentiles (usec):
     |  1.00th=[  112],  5.00th=[  115], 10.00th=[  117], 20.00th=[  121],
     | 30.00th=[  125], 40.00th=[  131], 50.00th=[  135], 60.00th=[  143],
     | 70.00th=[  151], 80.00th=[  174], 90.00th=[  202], 95.00th=[  225],
     | 99.00th=[  273], 99.50th=[  293], 99.90th=[  371], 99.95th=[  404],
     | 99.99th=[ 2376]
   bw (  KiB/s): min=61369, max=95946, per=75.55%, avg=77790.82, stdev=3083.55, samples=119
   iops        : min=15342, max=23986, avg=19447.35, stdev=770.89, samples=119
  lat (usec)   : 50=0.01%, 100=0.01%, 250=98.03%, 500=1.94%, 750=0.01%
  lat (usec)   : 1000=0.01%
  lat (msec)   : 2=0.01%, 4=0.01%, 10=0.01%
  cpu          : usr=5.99%, sys=20.83%, ctx=1183964, majf=0, minf=10
  IO depths    : 1=0.1%, 2=0.1%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued rwt: total=1544576,0,0, short=0,0,0, dropped=0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=4
seq-write: (groupid=2, jobs=1): err= 0: pid=18: Tue Nov 19 09:14:05 2019
  write: IOPS=22.9k, BW=89.5MiB/s (93.9MB/s)(5371MiB/60001msec)
    slat (usec): min=2, max=8464, avg=10.01, stdev=13.51
    clat (usec): min=18, max=85574, avg=163.42, stdev=307.78
     lat (usec): min=32, max=85589, avg=173.55, stdev=308.35
    clat percentiles (usec):
     |  1.00th=[   37],  5.00th=[   41], 10.00th=[   43], 20.00th=[   45],
     | 30.00th=[   48], 40.00th=[   52], 50.00th=[   57], 60.00th=[   62],
     | 70.00th=[   87], 80.00th=[  310], 90.00th=[  396], 95.00th=[  412],
     | 99.00th=[ 1450], 99.50th=[ 1729], 99.90th=[ 2311], 99.95th=[ 2573],
     | 99.99th=[ 3884]
   bw (  KiB/s): min=35616, max=163016, per=76.89%, avg=70472.97, stdev=20318.23, samples=119
   iops        : min= 8904, max=40754, avg=17617.89, stdev=5079.58, samples=119
  lat (usec)   : 20=0.01%, 50=35.62%, 100=35.76%, 250=6.91%, 500=17.63%
  lat (usec)   : 750=0.97%, 1000=0.85%
  lat (msec)   : 2=2.03%, 4=0.22%, 10=0.01%, 20=0.01%, 50=0.01%
  lat (msec)   : 100=0.01%
  cpu          : usr=6.25%, sys=27.58%, ctx=601428, majf=0, minf=6
  IO depths    : 1=0.1%, 2=0.1%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued rwt: total=0,1374870,0, short=0,0,0, dropped=0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=4
rand-write: (groupid=3, jobs=1): err= 0: pid=19: Tue Nov 19 09:14:05 2019
  write: IOPS=18.2k, BW=71.0MiB/s (74.5MB/s)(4263MiB/60001msec)
    slat (usec): min=2, max=10637, avg=10.54, stdev=25.59
    clat (usec): min=19, max=128171, avg=207.96, stdev=411.15
     lat (usec): min=32, max=128175, avg=218.61, stdev=412.95
    clat percentiles (usec):
     |  1.00th=[   37],  5.00th=[   42], 10.00th=[   44], 20.00th=[   46],
     | 30.00th=[   50], 40.00th=[   55], 50.00th=[   62], 60.00th=[  106],
     | 70.00th=[  388], 80.00th=[  392], 90.00th=[  400], 95.00th=[  420],
     | 99.00th=[ 1434], 99.50th=[ 1713], 99.90th=[ 2212], 99.95th=[ 2442],
     | 99.99th=[ 7504]
   bw (  KiB/s): min=36528, max=157928, per=99.06%, avg=72064.17, stdev=30484.58, samples=119
   iops        : min= 9132, max=39482, avg=18016.01, stdev=7621.13, samples=119
  lat (usec)   : 20=0.01%, 50=30.51%, 100=29.09%, 250=4.51%, 500=32.08%
  lat (usec)   : 750=0.95%, 1000=0.74%
  lat (msec)   : 2=1.91%, 4=0.20%, 10=0.01%, 20=0.01%, 50=0.01%
  lat (msec)   : 100=0.01%, 250=0.01%
  cpu          : usr=5.89%, sys=24.02%, ctx=574443, majf=0, minf=8
  IO depths    : 1=0.1%, 2=0.1%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued rwt: total=0,1091291,0, short=0,0,0, dropped=0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=4

Run status group 0 (all jobs):
   READ: bw=195MiB/s (205MB/s), 195MiB/s-195MiB/s (205MB/s-205MB/s), io=10.0GiB (10.7GB), run=52430-52430msec

Run status group 1 (all jobs):
   READ: bw=101MiB/s (105MB/s), 101MiB/s-101MiB/s (105MB/s-105MB/s), io=6034MiB (6327MB), run=60001-60001msec

Run status group 2 (all jobs):
  WRITE: bw=89.5MiB/s (93.9MB/s), 89.5MiB/s-89.5MiB/s (93.9MB/s-93.9MB/s), io=5371MiB (5631MB), run=60001-60001msec

Run status group 3 (all jobs):
  WRITE: bw=71.0MiB/s (74.5MB/s), 71.0MiB/s-71.0MiB/s (74.5MB/s-74.5MB/s), io=4263MiB (4470MB), run=60001-60001msec
```
