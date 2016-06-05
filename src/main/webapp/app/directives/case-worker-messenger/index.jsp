<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<h2>My Messages</h2>


<ul class="case-worker-messenger__messages list-group">
  <li class="case-worker-messenger__message list-group-item">
    <p class="case-worker-messenger__message-sender">From: Case Worker</p>
    <p class="case-worker-messenger__message-contents">Hello World</p>
  </li>
  <li class="case-worker-messenger__message list-group-item">
    <p class="case-worker-messenger__message-sender">From: Case Worker</p>
    <p class="case-worker-messenger__message-contents">Hello World</p>
  </li>
  <li class="case-worker-messenger__message list-group-item">
    <p class="case-worker-messenger__message-sender">From: Case Worker</p>
    <p class="case-worker-messenger__message-contents">Hello World</p>
  </li>
  <li class="case-worker-messenger__message list-group-item">
    <p class="case-worker-messenger__message-sender">From: Case Worker</p>
    <p class="case-worker-messenger__message-contents">Hello World</p>
  </li>
  <li class="case-worker-messenger__message list-group-item">
    <p class="case-worker-messenger__message-sender">From: Case Worker</p>
    <p class="case-worker-messenger__message-contents">Hello World</p>
  </li>
  <li class="case-worker-messenger__message list-group-item">
    <p class="case-worker-messenger__message-sender">From: Case Worker</p>
    <p class="case-worker-messenger__message-contents">Hello World</p>
  </li>
</ul>

<div class="case-worker-messenger__composer">
  <form>
    <div class="form-group">
      <div class="input-group">
        <span class="input-group-addon">To:</span>
        <input type="text" class="form-control" placeholder="Recepient">
      </div>
    </div>
    <div class="form-group">
      <textarea class="case-worker-messenger__composer-textarea form-control" rows="15"></textarea>
    </div>
    <div class="form-group">
      <button type="submit" class="btn btn-primary">Send</button>
    </div>
  </form>
</div>
