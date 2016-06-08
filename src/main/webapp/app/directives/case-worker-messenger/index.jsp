<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<sec:authorize access="isAuthenticated()">
  <header class="clearfix">
    <h3 class="case-worker-messenger__header-text pull-left">My Messages</h3>
    <a href="#" class="case-worker-messenger__compose-link pull-right">Create New Message</a>
  </header>

  <div class="case-worker-messenger__messages panel">
    <div class="case-worker-messenger__messages-content panel-body">
      <div class="case-worker-messenger__messages-list list-group" ng-if="messages.length > 0">
        <a href="#" class="case-worker-messenger__message list-group-item" ng-repeat="message in messages" ng-click="viewMessage(message.id)">
          <p class="case-worker-messenger__message-sender">{{ message.fromName }}</p>
          <p class="clearfix">
            <span class="case-worker-messenger__message-subject pull-left">{{message.subject}}</span>
            <span class="case-worker-messenger__message-date pull-right">{{ message.createdAt | date : 'M/d/yyyy' }}</span>
          </p>
          <p class="case-worker-messenger__message-contents">{{ message.content | limitTo : 150 }}...</p>
        </a>
      </div>
      <div ng-if="messages.length == 0">
        <p class="case-worker-messenger__messages-empty text-center">You have no messages.</p>
      </div>
    </div>
  </div>

  <div class="case-worker-messenger__composer">
    <form name="caseWorkerMessageForm" ng-submit="sendMessage()">
      <div class="form-group">
        <div class="input-group">
          <span class="input-group-addon">Case Worker:</span>
          <input type="text" name="recepient" disabled class="form-control" value="{{caseWorker.firstName + ' ' + caseWorker.lastName + '<' + caseWorker.email + '>'}}" ng-required="true">
        </div>
      </div>
      <div class="form-group">
        <input type="text" class="case-worker-messenger__subject-text form-control" ng-model="userMessage.subject" placeholder="Subject" ng-required="true"/>
      </div>
      <div class="form-group">
        <textarea class="case-worker-messenger__composer-textarea form-control" name="message" rows="15" ng-model="userMessage.content" ng-required="true"></textarea>
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-primary" ng-disabled="caseWorkerMessageForm.$invalid">Send</button>
        <button type="button" class="btn btn-primary" ng-click="resetMessage()">Reset</button>
      </div>
    </form>
  </div>
</sec:authorize>
