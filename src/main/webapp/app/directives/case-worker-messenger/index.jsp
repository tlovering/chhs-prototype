<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<h2>My Messages</h2>


<ul class="case-worker-messenger__messages list-group">
  <li class="case-worker-messenger__message list-group-item" ng-repeat="message in messages">
    <span class="case-worker-messenger__composer-date pull-right">{{ message.date | date : 'MM/dd/yyyy' }}</span>
    <p class="case-worker-messenger__message-sender">{{ message.from }} to {{ message.to }}</p>
    <p class="case-worker-messenger__message-contents">{{ message.message }}</p>
  </li>
</ul>

<div class="case-worker-messenger__composer">
  <form name="caseWorkerMessageForm" ng-submit="sendMessage(userMessage.recepient, userMessage.message)">
    <div class="form-group">
      <div class="input-group">
        <span class="input-group-addon">To:</span>
        <input type="text" name="recepient" class="form-control" placeholder="Recepient" ng-model="userMessage.recepient" ng-required="true">
      </div>
    </div>
    <div class="form-group">
      <textarea class="case-worker-messenger__composer-textarea form-control" name="message" rows="15" ng-model="userMessage.message" ng-required="true"></textarea>
    </div>
    <div class="form-group">
      <button type="submit" class="btn btn-primary" ng-disabled="caseWorkerMessageForm.$invalid">Send</button>
    </div>
  </form>
</div>
