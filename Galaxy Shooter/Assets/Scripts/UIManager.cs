using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIManager : MonoBehaviour
{
    public Sprite[] lives;
    public Image livesImageDisplay;
    public GameObject titleDisplay;
    public Text scoreText;
    public int score;
    public Text gameStateText;
    public Text startText;

    public void UpdateLives(int currentLives)
    {
        livesImageDisplay.sprite = lives[currentLives];
    }

    public void UpdateScore()
    {
        score += 10;
        scoreText.text = "Score: " + score;//assign it a new string
    }

    public void ShowTitleScreen()
    {
        titleDisplay.SetActive(true);
        gameStateText.text = "Start Game";
        startText.text = "Press 'Space' to Restart";
    }
    public void HideTitleScreen()
    {
        titleDisplay.SetActive(false);
        scoreText.text = "Score: ";
        score = 0;
    }

}
