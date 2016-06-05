<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<sec:authorize access="isAuthenticated()">
  <h2>My Messages</h2>

  <div class="case-worker-messenger__messages panel">
    <div class="case-worker-messenger__messages-content panel-body">
      <ul class="case-worker-messenger__messages-list list-group" ng-if="messages.length > 0">
        <li class="case-worker-messenger__message list-group-item" ng-repeat="message in messages">
          <span class="case-worker-messenger__message-date pull-right">{{ message.date | date : 'MM/dd/yyyy' }}</span>
          <a href class="case-worker-messenger__message-control pull-right text-danger" ng-click="deleteMessage(message.id)">Delete</a>
          <a href class="case-worker-messenger__message-control pull-right" ng-if="message.sender === 'CASEWORKER'" ng-click="replyToMessage(message.caseWorkerId)">Reply</a>
          <p class="case-worker-messenger__message-info">
            <span ng-if="message.sender === 'CASEWORKER'">{{ message.caseWorkerName }} to Me</span>
            <span ng-if="message.sender === 'USER'">Me to {{ message.caseWorkerName }}</span>
          </p>
          <p class="case-worker-messenger__message-contents">{{ message.message }}</p>
        </li>
      </ul>
      <div ng-if="messages.length == 0">
        <p class="case-worker-messenger__messages-empty text-center">You have no messages.</p>
      </div>
    </div>
  </div>

  <div class="case-worker-messenger__composer">
    <form name="caseWorkerMessageForm" ng-submit="sendMessage(userMessage.caseWorkerId, userMessage.message)">
      <div class="form-group">
        <div class="input-group">
          <span class="input-group-addon">Case Worker ID:</span>
          <input type="text" name="recepient" class="form-control" placeholder="Recepient" ng-model="userMessage.caseWorkerId" ng-required="true">
        </div>
      </div>
      <div class="form-group">
        <textarea class="case-worker-messenger__composer-textarea form-control" name="message" rows="15" ng-model="userMessage.message" ng-required="true"></textarea>
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-primary" ng-disabled="caseWorkerMessageForm.$invalid">Send</button>
        <button type="button" class="btn btn-primary" ng-click="resetMessage()">Reset</button>
      </div>
    </form>
  </div>
</sec:authorize>
