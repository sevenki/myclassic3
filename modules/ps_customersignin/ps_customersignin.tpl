<div id="_desktop_user_info">
  <div class="user-info">
    {if $logged}
      <a
        class="logout hidden-sm-down"
        href="{$logout_url}"
        rel="nofollow"
      >
      </a>
      <a
        class="account"
        href="{$my_account_url}"
        title="{l s='View my customer account' d='Shop.Theme.CustomerAccount'}"
        rel="nofollow"
      >
        <span class="hidden-sm-down">{$customerName}</span>
      </a>

      <div class="dropdown-account">
        <div>
          <a id="identity-link" href="{$urls.pages.identity}">My Account</a>
        </div>
        <div>
          {if $customer.addresses|count}
            <a id="addresses-link" href="{$urls.pages.addresses}">
              <span class="link-item">
                {l s='Addresses' d='Shop.Theme.CustomerAccount'}
              </span>
            </a>
          {else}
            <a id="address-link" href="{$urls.pages.address}">
              <span class="link-item">
                {l s='Add first address' d='Shop.Theme.CustomerAccount'}
              </span>
            </a>
          {/if} 
        </div>
        
          {if !$configuration.is_catalog}
          <div>
            <a id="history-link" href="{$urls.pages.history}">
              <span class="link-item">
                {l s='Order history and details' d='Shop.Theme.CustomerAccount'}
              </span>
            </a>
          </div>
          {/if}
        
      </div>
    {else}
      <a
        href="{$my_account_url}"
        title="{l s='Log in to your customer account' d='Shop.Theme.CustomerAccount'}"
        rel="nofollow"
      >
        <span class="hidden-sm-down">{l s='Sign in' d='Shop.Theme.Actions'}</span>
      </a>
    {/if}
  </div>
</div>