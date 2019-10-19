<#import "parts/common.ftl" as c>

<@c.page>
${message?ifExists}
<h5>${username}</h5>
<form method="post">

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password:</label>
        <div class="col-sm-4">
            <input type="password" class="form-control" name="password" placeholder="password"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Email:</label>
        <div class="col-sm-4">
            <input type="email" class="form-control" name="email" placeholder="some@some.com" value = "${email!''}"/>
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit" class="btn btn-primary">Save</button>
</form>

</@c.page>
