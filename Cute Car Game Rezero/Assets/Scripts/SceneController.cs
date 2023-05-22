using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneController : MonoBehaviour {

	public void ChangeLevel(string s)
	{
		//IMPORTANT TIP
		/*SceneManager.LoadScene("main");
		 *you can use that above to go directly to a scene. ex: level01, level02, etc
		 *or you can pass a parameter of the scene so you can come and go from it, time to time, ex: menus and options.
		 *using the parameter you can economizar code by using the same script elsewhere since it will load from the "s" and not an specific scene.
		 * So you can change the meaning of the string parameter if you want.*/
		SceneManager.LoadScene(s);

	}

	public void ExitGame()
	{
		Application.Quit();
		//Application class has a quit function.
	}
}
