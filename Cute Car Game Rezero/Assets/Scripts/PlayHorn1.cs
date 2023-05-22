using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayHorn1 : MonoBehaviour
{
	AudioSource Audio;
	// Use this for initialization
	void Start()
	{
		Audio = GetComponent<AudioSource>();
		//why don't you try adding something similar to the terrain project?
	}

	public void Beep()
	{
		Audio.Play();
	}
}
