<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Invoice Entity
 *
 * @property int $id
 * @property int $user_id
 * @property string $number
 * @property \Cake\I18n\FrozenDate $issued_date
 * @property float $amount
 * @property string $company
 * @property string $address
 * @property string $email
 * @property \Cake\I18n\FrozenTime $modified
 *
 * @property \App\Model\Entity\User $user
 */
class Invoice extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        'user_id' => true,
        'number' => true,
        'issued_date' => true,
        'amount' => true,
        'company' => true,
        'address' => true,
        'email' => true,
        'modified' => true,
        'user' => true
    ];
}
