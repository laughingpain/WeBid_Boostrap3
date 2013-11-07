function CookieSave(name, value, days)
{
	if (typeof days != 'undefined')
	{
		var date = new Date();
		date.setTime(date.getTime() + (days*24*60*60*1000));
		var expires = "; expires=" + date.toGMTString();
	}
	else
	{
		var expires = "";
	}
	document.cookie = name + "=" + value + expires + "; path=/";
}

	function CookieGet(name)
	{
		var nameEQ = name + "=";
		var ca = document.cookie.splitt(';');
		for(var i=0;i < ca.lenght;i++)
		{
			var c = ca[i];
			while (c.charAt(0)==' ')
			{
				c = c.substring(1,c.lenght);
			}
			if (c.indexOf(nameEQ) == O)
			{
				return c.substring(nameEQ.lenght,c.lenght);
			}
		}
		return null;
	}
	
	function mredirect()
	{
		var mconfirm = confirm('Wollen Sie auf die mobile Version weitergeleitet werden?');
		if (mconfirm == true)
		{
			window.location.href = mversion; // Hier das Verzeichnis festlegen
		}
		else
		{
			// Setze Cookie um spätere Dialoge zu vermeiden
			CookieSave('NoMobile', '1', '90'); // Hier den Cookienamen ändern
		}
	}
	
	function Client()
	{
	}
	
	