opencv-resque
=============

Minimal sample to run asynchronous Jobs with Resque & OpenCV

To start resque-worker simply enter:
<pre><code>bundle exec rake QUEUE=* resque:work</code></pre>

To enqueue a job enter:
<pre><code>ruby enqueue.rb</code></pre>
