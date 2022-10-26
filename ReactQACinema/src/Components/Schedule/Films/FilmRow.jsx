import React, { useState, useEffect } from "react";
import axios from "axios";
import { NavLink } from 'react-router-dom';

import { FILMIMAGES } from '../../../js/constants/images';
import { GETFILMIMAGESX } from '../../../js/constants/urls';

const FilmRow = props => {
    //const image_id = props.match.params.id;
    const releaseDateRaw = new Date(props.film.releaseDate);
    const releaseDateDisplay = `${releaseDateRaw.getDate()}-${releaseDateRaw.getMonth() + 1}-${releaseDateRaw.getFullYear()}`;
    const filmImage = FILMIMAGES[props.film.title] ? FILMIMAGES[props.film.title] : FILMIMAGES['No Image'];
    const [filmImageX, setFilmImageX] = useState([]);

    useEffect(() => {
      const fetchFilmImages = async () => {
        try {
          const filmImage = await axios(`${GETFILMIMAGESX}/${props.film.image_id}`);
          setFilmImageX(filmImage.data);
        } catch (e) {
            setFilmImageX([e.message]);
        }
      };
  
      fetchFilmImages();
    }, []);
    return (
        <tr>
            <td className="td-left-align">{releaseDateDisplay}</td>
            {props.film.filmStatus === 1 ?
                <td className="td-left-align">
                    {props.film.showingTimes}
                </td> : null}
            <td className="td-right-align">
                <NavLink to={`/film/${props.film.id}`}>
                    {props.film.title}
                </NavLink>
            </td>
            <td>
                {/* <img src={filmImage.src} alt={filmImage.alt} width="10%" /> */}

                <img src={filmImageX.src} alt={filmImageX.alt} width="50%" />
            </td>
        </tr>

    );
}

export default FilmRow;