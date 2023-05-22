using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Powerup : MonoBehaviour
{
    [SerializeField]
    private float _speed = 3.0f;
    [SerializeField]
    private int powerupId; // 0 = triple shot 1 = speed boost 2 = shields
    [SerializeField]
    private AudioClip _clip;
    void Update()
    {
        transform.Translate(Vector3.down * _speed * Time.deltaTime);

        if (transform.position.y < -7)
        {
            Destroy(this.gameObject);
        }
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        Debug.Log("Collided with: " + other.name);

        //checking the authenticity of the player by using tag instead of name, names change, tags are default -_- "NULL CHECKING"
        if (other.tag == "Player")
        {
            //acess the player
            Player player = other.GetComponent<Player>();

            if (player != null)
            {
                //enable triple shot
                if (powerupId == 0)
                {
                    player.TripleShotPowerupOn();
                }else if (powerupId == 1)
                {
                    //Tip: enable speed boost
                    player.SpeedBoostPowerupOn();
                }
                else if (powerupId == 2)
                {
                    //enable shields
                    player.EnableShields();
                }

            }
            //destroy ourselves
            AudioSource.PlayClipAtPoint(_clip, Camera.main.transform.position, 1f);
           Destroy(this.gameObject); // if you finish this game and the power ups disapearance if they don't touch the player isn't fix, then fix it, otherwise a bunch of power ups will remain falling.           
        }
    }
}
