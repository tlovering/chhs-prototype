<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<sec:authorize access="isAuthenticated()">
  <h2>My Messages</h2>

  <div class="case-worker-messenger__messages panel">
    <div class="case-worker-messenger__messages-content panel-body">
      <ul class="case-worker-messenger__messages-list list-group" ng-if="messages.length > 0">
        <li class="case-worker-messenger__message list-group-item" ng-repeat="message in messages">
          <span class="case-worker-messenger__message-date pull-right">{{ message.date | date : 'MM/dd/yyyy' }}</span>
          <a href class="case-worker-messenger__message-control pull-right" ng-click="replyTo(message.toId, message.fromId)">Reply</a>
          <p class="case-worker-messenger__message-info">{{ message.fromName }} to {{ message.toName }}</p>
          <p class="case-worker-messenger__message-contents">{{ message.message }}</p>
        </li>
      </ul>
      <div ng-if="messages.length == 0">
        <p class="case-worker-messenger__messages-empty text-center">You have no messages.</p>
      </div>
    </div>
  </div>

  <div class="case-worker-messenger__composer">
    <form name="caseWorkerMessageForm" ng-submit="sendMessage(userMessage.from, userMessage.to, userMessage.message)">
      <div class="form-group">
        <div class="input-group">
          <span class="input-group-addon">To:</span>
          <input type="text" name="recepient" class="form-control" placeholder="Recepient" ng-model="userMessage.to" ng-required="true">
        </div>
      </div>
      <div class="form-group">
        <textarea class="case-worker-messenger__composer-textarea form-control" name="message" rows="15" ng-model="userMessage.message" ng-required="true"></textarea>
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-primary pull-right" ng-disabled="caseWorkerMessageForm.$invalid">Send</button>
      </div>
    </form>
  </div>
</sec:authorize>
