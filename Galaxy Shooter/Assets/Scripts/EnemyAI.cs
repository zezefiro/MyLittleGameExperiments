using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;
using UnityEngine.Assertions.Must;
using UnityEngine.SocialPlatforms.Impl;

public class EnemyAI : MonoBehaviour
{
    //variable for my speed
    [SerializeField]
    private float _speed = 5.0f;

    [SerializeField]
    private GameObject _enemyExplosionPrefab;

    [SerializeField]
    private AudioClip _clip;
    private UIManager _uiManager; // handler

    // Start is called before the first frame update
    void Start()
    {
        _uiManager = GameObject.Find("Canvas").GetComponent<UIManager>();//gets the UImanager.
    }

    // Update is called once per frame
    void Update()
    {
        //move down
        transform.Translate(Vector3.down * _speed * Time.deltaTime);
        //when off the screen on the bottom
        if (transform.position.y < -6.45f)
        {
            //respawn back on top with a new x position between the bounds of the screen(random within)
            float randomX = Random.Range(-8f, 8f);
            transform.position = new Vector3(randomX, 7, 0);
        }

    }
    //enemy checks if it has collided with laser or player, i gave both of them tags and if it did, 
    //laser destroys the spaceship and itself, in the player vs enemy, enemy dies and player calls the damage method.
    private void OnTriggerEnter2D(Collider2D other)
    {
        
        if (other.tag == "Laser")
        {
            //destroy the laser's parent.
           /* if (other.transform.parent != null)
            {
                Destroy(transform.parent.gameObject);
            }*/
            Destroy(other.gameObject);  
            Instantiate(_enemyExplosionPrefab, transform.position, Quaternion.identity);

            _uiManager.UpdateScore();//updates score before it gets destroyed
            AudioSource.PlayClipAtPoint(_clip, Camera.main.transform.position, 1f);
            Destroy(this.gameObject);
        }
        else if (other.tag == "Player")
        {
            Player player = other.GetComponent<Player>();

            if (player != null)
            {
                player.Damage();
            }
            Instantiate(_enemyExplosionPrefab, transform.position, Quaternion.identity);
            //i don't score when the player destroys the ship with its body to not have trouble with shield collision too and to just score with the laser.
            AudioSource.PlayClipAtPoint(_clip, Camera.main.transform.position,1f);
            Destroy(this.gameObject);
        }
    }
}
